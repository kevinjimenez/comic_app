import 'package:comic/domian/domian.dart';

abstract class CharactersRepository {
  Future<List<Character>> getCharacters({int limit = 10, offset = 0});
}
