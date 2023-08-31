import 'package:comic/config/config.dart';
import 'package:comic/domian/domian.dart';
import 'package:comic/infrastructure/infrastructure.dart';
import 'package:dio/dio.dart';

class CharactersDatasourceImpl extends CharactersDatasource {
  final dio = Dio(BaseOptions(baseUrl: Environment.apiUrl, queryParameters: {
    'api_key': Environment.comicKey,
    'format': 'json',
    'limit': 10,
    'offset': 0
  }));

  @override
  Future<List<Character>> getCharacters({int limit = 10, offset = 0}) async {
    try {
      final response = await dio.get('/characters');
      final result = CharactersResponse.fromJson(response.data);
      final List<Character> characters = [];
      for (final character in result.results) {
        characters.add(CharacterMapper.jsonToEntity(character)); // mapper
      }
      return characters;
    } catch (e) {
      return [];
    }
  }
}
