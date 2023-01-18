import 'package:rick_and_morty/logic/characters_bloc/characters_bloc.dart';
import 'package:rick_and_morty/screens/character_screen/widgets/character_listtitle.dart';
import 'package:rick_and_morty/screens/character_screen/widgets/characters_gridview.dart';
import 'package:rick_and_morty/themes/text_styles.dart';
import '../../data/models/characters.dart';
import '../search_screen/search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  bool isList = true;
  Character? _currentCharacters;

  List<Results> _currentResults = [];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharactersBloc>().state;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 112,
        elevation: 0,
        backgroundColor: Colors.transparent,
        primary: true,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SearchScreen(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Всего персонажей:${_currentCharacters!.info.count}".toUpperCase(),
                    style: AppTexStyle.appbartext),
                IconButton(
                  icon: isList
                      ? Image.asset('assets/icons/grid_icon.png')
                      : Image.asset('assets/icons/list_icon.png'),
                  onPressed: () {
                    isList = !isList;
                    setState(() {});
                  },
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: state.maybeWhen(
              orElse: () {
                return _customListView(_currentResults);
              },
              loading: (models) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
              success: (allPage, isLoading, charactersSuccess) {
                isLoading = true;
                _currentResults = charactersSuccess;
                return _currentResults.isNotEmpty
                    ? isList
                        ? _customListView(_currentResults)
                        : _customGridView(_currentResults)
                    : const SizedBox();
              },
              error: () {
                return Center(
                  child: Column(
                    children: [
                      Image.asset('assets/images/nothing.png'),
                      Text(
                        'Персонаж с таким именем не найден',
                        style: AppTexStyle.colorgrey,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _customListView(
    List<Results> currentResults,
  ) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        final current = notification.metrics.pixels + 100;
        final max = notification.metrics.maxScrollExtent;

        if (max < current) {
          BlocProvider.of<CharactersBloc>(context)
              .add(const CharactersEvent.fetch('', 0));
        }
        return false;
      },
      child: ListView.separated(
        separatorBuilder: (_, index) => const SizedBox(
          height: 24,
        ),
        physics: const ClampingScrollPhysics(),
        itemBuilder: ((context, index) {
          if (index < currentResults.length) {
            final result = currentResults[index];
            return CharacterListTitle(
              result: result,
            );
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 1),
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          }
        }),
        itemCount: currentResults.length + 1,
        shrinkWrap: true,
      ),
    );
  }

  Widget _customGridView(List<Results> results) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        final current = notification.metrics.pixels + 100;
        final max = notification.metrics.maxScrollExtent;
        if (max < current) {
          BlocProvider.of<CharactersBloc>(context)
              .add(const CharactersEvent.fetch('', 0));
        }
        return false;
      },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 24, mainAxisExtent: 210),
        shrinkWrap: true,
        itemCount: results.length + 2,
        itemBuilder: (context, index) {
          if (index < results.length) {
            return CharactersGridView(result: results[index]);
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 1),
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          }
        },
      ),
    );
  }
}
