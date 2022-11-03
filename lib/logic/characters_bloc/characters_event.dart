part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.fetch(String name, int currentPage) =
      CharactersEventFetch;
  const factory CharactersEvent(
      String name,) = CharactersEventSearch;
}
