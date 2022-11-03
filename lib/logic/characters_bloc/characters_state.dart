part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.searchCharacters(
      {required String name,
      required int allPage,
      required List<Results> result}) = CharactersStateSearch;
  const factory CharactersState.loading({ required List<Results> models}) = CharactersStateLoading;
  const factory CharactersState.success({
    required int allPage,
    required bool isLoading,
    required List<Results> charactersSuccess,
  }) = CharactersStateSuccess;
  const factory CharactersState.error() = CharactersStateError;
}
