import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/character_screen/widgets/character_livestate.dart';
import 'package:rick_and_morty/screens/settings_screen/routes/router.gr.dart';

import '../../../data/models/characters.dart';

class CharacterListTitle extends StatelessWidget {
  const CharacterListTitle({
    Key? key,
    required this.result,
  }) : super(key: key);
  final Results result;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                context.router.push(CharactersDetailRoute(result: result));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 54,
                    backgroundImage: CachedNetworkImageProvider(result.image,),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CharacterStatus(
                            liveState: result.status == 'Alive'
                                ? LiveState.alive
                                : result.status == 'Dead'
                                    ? LiveState.dead
                                    : LiveState.unknown),
                        Text(
                          result.name,
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyMedium?.color,
                              fontSize: 16),
                        ),
                        Text('${result.species},${result.gender}',
                            style: const TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
