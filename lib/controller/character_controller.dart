import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/controller/character_list_state.dart';
import 'package:myapp/data/character_service.dart';

class CharacterController extends StateNotifier<CharacterListState> {
  final CharacterService service;

  CharacterController(this.service) : super(CharacterListState());

  Future<void> loadCharacters() async {
    state = state.copyWith(isLoading: true);
    try {
      final characters = await service.fetchCharacters();
      state = state.copyWith(isLoading: false, characters: characters);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}
