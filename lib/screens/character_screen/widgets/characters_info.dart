import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/character_screen/widgets/character_livestate.dart';

import '../../../data/models/characters.dart';

class CharactersDetailPage extends StatelessWidget {
  const CharactersDetailPage({
    Key? key,
    required this.result,
  }) : super(key: key);
  final Results result;

  @override
  Widget build(BuildContext context) {
    const double coverHeight = 300;
    const double profileHeight = 144;
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          primary: true,
          snap: true,
          floating: true,
          pinned: true,
          expandedHeight: 218,
          title: Text(
            result.name,
            style:
                TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color),
          ),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            centerTitle: true,
            background: Blur(
              blurColor: const Color(0xff0b1e2d),
              blur: 2.5,
              child: Container(
                height: coverHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  image: DecorationImage(
                    image: NetworkImage(
                      result.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  CircleAvatar(
                    radius: 82,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      radius: profileHeight / 2,
                      backgroundImage: NetworkImage(result.image),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      result.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                          fontSize: 34,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CharacterStatus(
                        liveState: result.status == 'Alive'
                            ? LiveState.alive
                            : result.status == 'Dead'
                                ? LiveState.dead
                                : LiveState.unknown),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Пол',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              result.gender,
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Расса',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              result.species,
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Место рождения',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                result.origin.name,
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Местоположение',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                result.location.name,
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
