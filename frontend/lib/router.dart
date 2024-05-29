import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/active_balls.dart';
import 'package:frontend/state/casting.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/widgets/match_page.dart';
import 'package:frontend/widgets/start_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CastingCubit(), lazy: false),
          BlocProvider(create: (context) => ActiveBallsCubit()),
        ],
        child: Scaffold(
          appBar: AppBar(
              // TRY THIS: Try changing the color here to a specific color (to
              // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
              // change color while the other colors stay the same.
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: const Text('Deadness Board'),
              actions: [
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: HtmlElementView.fromTagName(
                        tagName: 'google-cast-launcher')),
              ]),
          body: child,
        ),
      ),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const StartPage(),
        ),
        GoRoute(
          path: '/matches/:matchId',
          builder: (context, state) {
            final matchId = state.pathParameters['matchId']!;
            return BlocProvider(
              create: (context) => MatchCubit(matchId: matchId),
              child: Builder(builder: (context) {
                return MatchPage(key: ValueKey(matchId));
              }),
            );
          },
        ),
      ],
    ),
  ],
);
