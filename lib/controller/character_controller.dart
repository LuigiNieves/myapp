import '../models/character.dart';
import '../data/character_service.dart';

class CharacterController {
  final CharacterService _service;

  CharacterController(this._service);

  Future<List<Character>> loadCharacters() async {
    return await _service.fetchCharacters();
  }
}
