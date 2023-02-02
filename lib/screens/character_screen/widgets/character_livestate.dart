import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  final LiveState liveState;
  const CharacterStatus({Key? key, required this.liveState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      liveState == LiveState.alive
          ? 'Alive'
          : liveState == LiveState.dead
              ? 'Dead'
              : 'Unknown',
      style: TextStyle(
          color: liveState == LiveState.alive
              ? Colors.green
              : liveState == LiveState.dead
                  ? Colors.red
                  : Colors.orange),
    );
  }
} 
