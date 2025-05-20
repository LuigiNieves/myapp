import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/data/character_service.dart';
import 'package:myapp/models/character.dart';

final characterServiceProvider = Provider((ref) => CharacterService());

final characterListProvider = FutureProvider<List<Character>>((ref) async {
  final service = ref.read(characterServiceProvider);
  return await service.fetchCharacters();
});
