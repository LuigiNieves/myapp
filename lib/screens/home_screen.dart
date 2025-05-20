import 'package:flutter/material.dart';
import 'package:myapp/models/character.dart';

class HomeScreen extends StatelessWidget {
  final List<Character> characters;
  final Function(Character) onCharacterTap;

  const HomeScreen({
    super.key,
    required this.characters,
    required this.onCharacterTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final character = characters[index];
        return ListTile(
          leading: Image.network(character.imageUrl),
          title: Text(character.name),
          subtitle: Text('Status: ${character.status}'),
          onTap: () => onCharacterTap(character),
        );
      },
    );
  }
}
