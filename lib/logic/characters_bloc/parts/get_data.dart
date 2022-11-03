part of '../characters_bloc.dart';

extension GetData on CharactersBloc {
  void getData(
    CharactersEventFetch event,
    Emitter<CharactersState> emit,
  ) async {
    if (currentPage++ < maxPage) {
      final result =
          await charactersRepo.getCharacters(currentPage: currentPage);
      Character character = Character.fromJson(result.data);
      characters = [...characters, ...character.results];
      maxPage = character.info.pages;
      if (characters.isEmpty) {
        emit(CharactersState.loading(models: characters));
      } else {
        emit(
          CharactersState.success(
            allPage: 0,
            isLoading: true,
            charactersSuccess: characters,
          ),
        );
      }
      try {
        emit(
          CharactersState.success(
            allPage: character.info.count,
            isLoading: false,
            charactersSuccess: characters,
          ),
        );
      } catch (e) {
        emit(const CharactersState.error());
      }
    }
  }
}
