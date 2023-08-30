import 'package:comic/domian/domian.dart';
import 'package:comic/infrastructure/infrastructure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final charactersRepositoryProvider = Provider<CharactersRepository>((ref) {
  final charactersRepository =
      CharactersRepositoryImpl(CharactersDatasourceImpl());

  return charactersRepository;
});
