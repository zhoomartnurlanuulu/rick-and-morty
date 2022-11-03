part of '../characters_bloc.dart';

extension SearchCharacter on CharactersBloc {
  void searchCharacters(
    CharactersEventSearch event,
    Emitter<CharactersState> emit,
  ) async {
    if (event.name.isNotEmpty) {
      if (srchCharacters.isEmpty) {
        emit(CharactersState.loading(models: characters));
      } else {
        emit(
          CharactersState.success(
            allPage: 0,
            isLoading: true,
            charactersSuccess: srchCharacters,
          ),
        );
      }
      try {
        final result = await charactersRepo.searchCharacters(
          name: event.name,
        );

        Character srchCharacter = Character.fromJson(result.data);
        srchCharacters = srchCharacter.results;
        maxPage = srchCharacter.info.pages;

        emit(
          CharactersState.success(
            allPage: srchCharacter.info.pages,
            isLoading: false,
            charactersSuccess: srchCharacters,
          ),
        );
      } catch (e) {
        emit(const CharactersState.error());
      }
    }
  }
}
