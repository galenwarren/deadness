import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/utilities/id.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => _startMatch(context),
        child: const Text('Start Match'),
      ),
    );
  }

  void _startMatch(BuildContext context) async {
    try {
      final Map<CroquetBallColor, CroquetBall> balls = {};
      for (final ballColor in CroquetBallColor.values) {
        balls[ballColor] = CroquetBall(
          ballColor: ballColor,
          deadOnBalls: [],
          clearedWicketIndex: null,
        );
      }
      final match = CroquetMatch(
        id: newRandomId(),
        expireAt: DateTime.now().add(const Duration(days: 30)),
        balls: balls,
      );
      final router = GoRouter.of(context);
      await FirebaseFirestore.instance
          .collection('matches')
          .doc(match.id)
          .set(match.toJson());
      router.go('/matches/${match.id}');
    } catch (e) {
      rethrow;
    }
  }
}
