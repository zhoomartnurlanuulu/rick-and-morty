// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/characters.dart';
import '../../data/repositories/characters_repository.dart';

part 'characters_bloc.freezed.dart';
part 'characters_event.dart';
part 'characters_state.dart';
part 'parts/get_data.dart';
part 'parts/search_characters.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersRepo charactersRepo;
  int maxPage = 43;
  int currentPage = 0;
  bool isLoading = true;
  List<Results> characters = [];
  List<Results> srchCharacters = [];

  CharactersBloc({required this.charactersRepo})
      : super(CharactersState.loading(models: [])) {
    on<CharactersEventFetch>(getData);
    on<CharactersEventSearch>(searchCharacters);
  }
}
