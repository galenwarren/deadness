// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:convert';

import 'dart:async';
import 'dart:js_util';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/model_cubit.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/utilities/collection.dart';
import 'package:frontend/utilities/constants.dart';
import 'package:frontend/widgets/deadness_page.dart';
import 'package:frontend/widgets/player_page.dart';
import 'package:frontend/widgets/settings_page.dart';
import 'dart:js_interop';

@JS('ccc.castData')
external JSPromise castData(
  String matchId,
  String deadnessJson,
  String contentType,
);

class MatchPage extends StatefulWidget {
  const MatchPage({
    super.key,
    required this.model,
    required this.casting,
    required this.userCredential,
  });

  final CroquetModel model;

  final bool casting;

  final UserCredential userCredential;

  @override
  State<StatefulWidget> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final _pageController = PageController();

  Future<void> _castData() async {
    try {
      // if casting, send the casted view
      if (widget.casting) {
        final deadnessJson = jsonEncode(widget.model.deadness.toJson());
        await promiseToFuture(
          castData(widget.model.match.id, deadnessJson, jsonContentType),
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print('failed to update croquet deadness via json');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _castData();
  }

  @override
  void didUpdateWidget(covariant MatchPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model != widget.model ||
        oldWidget.casting != widget.casting) {
      _castData();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // render
    final playingColors =
        context.select<CroquetModelCubit, ComparableList<CroquetBallColor>>(
      (cubit) {
        return ComparableList(
            CroquetBallColor.values.where(cubit.isPlaying).toList());
      },
    );
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: PageView(
            controller: _pageController,
            children: [
              const SettingsPage(),
              ...playingColors.list.map((ballColor) {
                return PlayerPage(
                  match: widget.model.match,
                  player: widget.model.players[ballColor]!,
                );
              }),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: DeadnessPage(model: widget.model),
        ),
      ],
    );
  }
}
