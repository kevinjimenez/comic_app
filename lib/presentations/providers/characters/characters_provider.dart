import 'package:comic/domian/domian.dart';
import 'package:comic/presentations/providers/characters/characters_repostory_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final charactersProvider =
    StateNotifierProvider<CharactersNotifier, CharactersState>((ref) {
  final charactersRepository = ref.watch(charactersRepositoryProvider);
  return CharactersNotifier(charactersRepository: charactersRepository);
});

class CharactersNotifier extends StateNotifier<CharactersState> {
  final CharactersRepository charactersRepository;
  CharactersNotifier({required this.charactersRepository})
      : super(CharactersState()) {
    loadNextPage();
  }

  Future loadNextPage() async {
    // para q no consulte como loco
    if (state.isLoading || state.isLastPage) return;
    state = state.copyWith(
      isLoading: true,
    );

    final characters = await charactersRepository.getCharacters(
        limit: state.limit, offset: state.offset);

    if (characters.isEmpty) {
      state = state.copyWith(
        isLoading: false,
        isLastPage: true,
      );
      return;
    }

    state = state.copyWith(
        isLoading: false,
        isLastPage: false,
        offset: state.offset + 10,
        characters: [...state.characters, ...characters]);
  }
}

class CharactersState {
  final bool isLastPage;
  final int limit;
  final int offset;
  final bool isLoading;
  final List<Character> characters;

  CharactersState(
      {this.isLastPage = false,
      this.limit = 10,
      this.offset = 0,
      this.isLoading = false,
      this.characters = const []});

  CharactersState copyWith({
    bool? isLastPage,
    int? limit,
    int? offset,
    bool? isLoading,
    List<Character>? characters,
  }) =>
      CharactersState(
        isLastPage: isLastPage ?? this.isLastPage,
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        isLoading: isLoading ?? this.isLoading,
        characters: characters ?? this.characters,
      );
}
