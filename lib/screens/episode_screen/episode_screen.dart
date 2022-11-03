import 'package:flutter/material.dart';

class EpisodeScreen extends StatefulWidget {
  const EpisodeScreen({super.key});

  @override
  State<EpisodeScreen> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends State<EpisodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          primary: true,
          elevation: 0,
          title: Row(
            children: [
              Text('Эпизоды',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color))
            ],
          ),
        ),
        body: Center(
          child: Column(children: [
            Image.asset('assets/images/nothing.png'),
            const Text(
              'Coming Soon',
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ));
  }
}
