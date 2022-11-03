import 'package:rick_and_morty/screens/search_screen/widgets/search_page_list.dart';
import '../../../logic/characters_bloc/characters_bloc.dart';
import 'package:rick_and_morty/data/models/characters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Character? currentCharacters;
  List<Results> _currentResults = [];
  String _currentSearchStr = '';

  final _controller = TextEditingController();
  bool isPagintion = false;
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharactersBloc>().state;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        primary: true,
        title: Column(
          children: [
            TextField(
                controller: _controller,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  suffix: IconButton(
                      onPressed: _controller.clear,
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                  hintText: 'Найти персонажа',
                  hintStyle: const TextStyle(color: Color(0xff5B6975)),
                  fillColor: Theme.of(context).primaryColor,
                  filled: true,
                ),
                onChanged: (value) {
                  _currentResults = [];
                  _currentSearchStr = value;
                  BlocProvider.of<CharactersBloc>(context)
                      .add(CharactersEventSearch(value));
                }),
          ],
        ),
      ),
      body: state.when(
          loading: (models) {
            return Center(
              child:
                  Row(children: const [CircularProgressIndicator.adaptive()]),
            );
          },
          searchCharacters: (allPage, name, result) => const CircleAvatar(),
          success: (
            allPage,
            isLoading,
            charactersSuccess,
          ) {
            _currentResults = charactersSuccess;

            _currentResults = context.read<CharactersBloc>().srchCharacters;

            return _currentResults.isNotEmpty
                ? _customListView(
                    _currentResults,
                  )
                : const SizedBox();
          },
          error: () => Center(
                child: Column(children: [
                  const SizedBox(
                    height: 91,
                  ),
                  Image.asset('assets/images/nothing.png'),
                  const SizedBox(
                    height: 28,
                  ),
                  const Text(
                    'Персонаж с таким именем \n не найден',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                ]),
              )),
    );
  }

  Widget _customListView(
    List<Results> currentResults,
  ) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        final current = notification.metrics.pixels + 100;
        final max = notification.metrics.maxScrollExtent;
        if (current > max) {
          if (_currentSearchStr.isEmpty) {
            BlocProvider.of<CharactersBloc>(context)
                .add(CharactersEventSearch(_currentSearchStr));
          }
        }
        return true;
      },
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: ((context, index) {
          if (index < currentResults.length) {
            final result = currentResults[index];
            return SearchPageListTitle(
              result: result,
            );
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 1),
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          }
        }),
        separatorBuilder: (_, index) => const SizedBox(
          height: 24,
        ),
        itemCount: currentResults.length + 1,
        shrinkWrap: true,
      ),
    );
  }
}
