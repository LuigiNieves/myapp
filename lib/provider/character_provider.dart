import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/controller/character_controller.dart';
import 'package:myapp/controller/character_list_State.dart';
import 'package:myapp/data/character_service.dart';

final characterServiceProvider = Provider((ref) => CharacterService());

final characterListProvider = StateNotifierProvider<CharacterController, CharacterListState>(
  (ref) => CharacterController(ref.read(characterServiceProvider)),
);
