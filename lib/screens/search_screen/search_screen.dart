import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';
import '../../logic/characters_bloc/characters_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import '../../data/models/characters.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Results> _currentResults = [];

  @override
  void initState() {
    super.initState();
    if (_currentResults.isEmpty) {
      context.read<CharactersBloc>().add(const CharactersEvent.fetch('', 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 600,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Найти персонажа',
              hintStyle: const TextStyle(color: Color(0xff5B6975)),
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
              suffixIconColor: Theme.of(context).primaryColor,
              fillColor: Theme.of(context).primaryColor,
              filled: true,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1)),
            ),
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                context.router.push(const SearchRoute());
              }
            },
          ),
        ),
      ],
    );
  }
}
