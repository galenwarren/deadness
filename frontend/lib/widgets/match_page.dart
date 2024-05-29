// ignore: avoid_web_libraries_in_flutter
import 'dart:js_util';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/active_balls.dart';
import 'package:frontend/state/casting.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/utilities/stream.dart';
import 'package:frontend/widgets/deadness_page.dart';
import 'package:frontend/widgets/player_page.dart';
import 'package:frontend/widgets/settings_page.dart';
import 'dart:js_interop';

import 'package:rxdart/streams.dart';
import 'package:rxdart/transformers.dart';

const _jsonContentType = "application/json";

@JS('ccc.castData')
external JSPromise castData(String dataUri, String contentType);

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<StatefulWidget> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final _pageController = PageController();
  late final StreamSubscription _subscription;

  /*
  Future<void> _castData() async {
    /*
    final bytes = await _screenshotController.captureFromWidget(deadnessPage);
    final dataUri = UriData.fromBytes(bytes, mimeType: _castContentType);
    await promiseToFuture(castData(dataUri.toString(), _castContentType));
    */
  }*/

  @override
  void initState() {
    super.initState();
    _subscription = CombineLatestStream.combine2(
      context.read<CastingCubit>().behaviorStream,
      context.read<MatchCubit>().behaviorStream,
      (casting, match) => (casting, match),
    ).flatMap((value) async* {
      final (casting, match) = value;
      if (casting && match != null) {
        final json = jsonEncode(match.toJson());
        final jsonBytes = utf8.encode(json);
        final dataUri = UriData.fromBytes(
          jsonBytes,
          mimeType: _jsonContentType,
        );
        await promiseToFuture(castData(dataUri.toString(), _jsonContentType));
      }
    }).listen((event) {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // read the match; if null, wait
    final match = context.watch<MatchCubit>().state;
    if (match == null) {
      return const CircularProgressIndicator();
    }

    // render
    final ballColors = context.watch<ActiveBallsCubit>().sorted;
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: PageView(
            controller: _pageController,
            children: [
              const SettingsPage(),
              ...ballColors.map((ballColor) {
                return PlayerPage(ball: match.balls[ballColor]!);
              }),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: DeadnessPage(match: match),
        ),
      ],
    );
  }
}
