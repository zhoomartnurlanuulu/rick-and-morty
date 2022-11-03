import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';

import '../../../data/models/characters.dart';
import 'character_livestate.dart';

class CharactersGridView extends StatelessWidget {
  const CharactersGridView({Key? key, required this.result}) : super(key: key);
  final Results result;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(CharactersDetailRoute(
          result: result,
        ));
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              result.image,
            ),
            radius: 60,
          ),
          const SizedBox(
            height: 14,
          ),
          CharacterStatus(
              liveState: result.status == 'Alive'
                  ? LiveState.alive
                  : result.status == 'Dead'
                      ? LiveState.dead
                      : LiveState.unknown),
          Expanded(
            child: Text(
              result.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          ),
          Flexible(
            child: Text(
              '${result.gender},${result.species}',
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
