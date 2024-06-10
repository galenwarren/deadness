import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/casting_cubit.dart';
import 'package:frontend/state/editing_cubit.dart';
import 'package:frontend/state/model_cubit.dart';
import 'package:frontend/widgets/match_page.dart';
import 'package:frontend/widgets/start_page.dart';
import 'package:frontend/widgets/wait.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
GoRouter router(UserCredential userCredential) {
  final router = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) => Provider(
          create: (context) => userCredential,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => EditingCubit()),
              BlocProvider(create: (context) => CastingCubit(), lazy: false),
            ],
            child: Builder(
              builder: (context) => Scaffold(
                appBar: AppBar(
                    // TRY THIS: Try changing the color here to a specific color (to
                    // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
                    // change color while the other colors stay the same.
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    // Here we take the value from the MyHomePage object that was created by
                    // the App.build method, and use it to set our appbar title.
                    leading: IconButton(
                      icon: const Icon(Icons.abc),
                      onPressed: () => context.go('/'),
                    ),
                    title: const Text('Deadness Board'),
                    actions: [
                      IconButton(
                        onPressed: () {
                          context.read<EditingCubit>().toggle();
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      SizedBox(
                        height: 32,
                        width: 40,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            child: HtmlElementView.fromTagName(
                              tagName: 'google-cast-launcher',
                            )),
                      ),
                    ]),
                body: child,
              ),
            ),
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
                create: (context) => CroquetModelCubit(
                  context,
                  matchId: matchId,
                  userCredential: userCredential,
                ),
                child: Builder(builder: (context) {
                  final cubit = context.watch<CroquetModelCubit>();
                  final casting = context.watch<CastingCubit>().state;
                  return WaitFor(
                    value: cubit.state,
                    action: (context) async {
                      await cubit.ensureRegistered();
                    },
                    builder: (context, match) => MatchPage(
                      key: ValueKey(matchId),
                      model: cubit.state!,
                      casting: casting,
                      userCredential: userCredential,
                    ),
                  );
                }),
              );
            },
          ),
        ],
      ),
    ],
  );
  return router;
}
