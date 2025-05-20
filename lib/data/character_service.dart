import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character.dart';

class CharacterService {
  Future<List<Character>> fetchCharacters() async {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return (data['results'] as List)
          .map((json) => Character.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
}
