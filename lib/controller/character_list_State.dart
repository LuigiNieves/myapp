import 'package:myapp/models/character.dart';

class CharacterListState {
  final bool isLoading;
  final List<Character> characters;
  final String? errorMessage;

  CharacterListState({
    this.isLoading = false,
    this.characters = const [],
    this.errorMessage,
  });

  CharacterListState copyWith({
    bool? isLoading,
    List<Character>? characters,
    String? errorMessage,
  }) {
    return CharacterListState(
      isLoading: isLoading ?? this.isLoading,
      characters: characters ?? this.characters,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
