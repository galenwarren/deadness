import 'package:flutter/material.dart';
import 'package:frontend/state/model.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({
    super.key,
    required this.ball,
  });

  final CroquetBall ball;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ball.ballColor.color,
      child: DefaultTextStyle.merge(
        style: TextStyle(color: ball.ballColor.foregroundColor),
        child: const Center(child: Text('Player')),
      ),
    );
  }
}
