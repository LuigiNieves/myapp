import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/character.dart';
import 'package:myapp/screens/Search_screen.dart';
import 'package:myapp/screens/detail_character_screen.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/provider/character_provider.dart';
import 'package:myapp/screens/profile_screen.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  int _selectedIndex = 0;
  Character? selectedCharacter;

  @override
  void initState() {
    super.initState();
    // Cargar personajes al iniciar la pantalla
    Future.microtask(() {
      ref.read(characterListProvider.notifier).loadCharacters();
    });
  }

  @override
  Widget build(BuildContext context) {
    final characterState = ref.watch(characterListProvider);

    Widget content;

    if (characterState.isLoading) {
      content = const Center(child: CircularProgressIndicator());
    } else if (characterState.errorMessage != null) {
      content = Center(child: Text('Error: ${characterState.errorMessage}'));
    } else {
      final characters = characterState.characters;
      content = selectedCharacter != null
          ? CharacterDetailScreen(
              character: selectedCharacter!,
              onBack: () {
                setState(() {
                  selectedCharacter = null;
                });
              },
            )
          : HomeScreen(
              characters: characters,
              onCharacterTap: (character) {
                setState(() {
                  selectedCharacter = character;
                });
              },
            );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Rick and Morty App2')),
      body: _selectedIndex == 0
          ? content
          : _selectedIndex == 1
              ? const Center(child:  SearchScreen())
              : const Center(child: ProfileScreen()),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
