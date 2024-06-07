import 'package:flutter/material.dart';
import 'package:frontend/state/model_cubit.dart';
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
    final router = GoRouter.of(context);
    final matchId = await CroquetModelCubit.createMatch();
    router.go('/matches/$matchId');
  }
}
