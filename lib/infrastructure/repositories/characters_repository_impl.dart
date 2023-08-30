import 'package:comic/domian/domian.dart';

class CharactersRepositoryImpl extends CharactersRepository {
  final CharactersDatasource datasource;

  CharactersRepositoryImpl(this.datasource);

  @override
  Future<List<Character>> getCharacters({int limit = 10, offset = 0}) {
    return datasource.getCharacters(limit: limit, offset: offset);
  }
}
