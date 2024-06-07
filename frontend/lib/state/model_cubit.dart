import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/utilities/id.dart';
import 'package:frontend/utilities/time.dart';
import 'package:rxdart/streams.dart';

class CroquetModelCubit extends Cubit<CroquetModel?> {
  CroquetModelCubit(
    BuildContext context, {
    required this.matchId,
    required this.userCredential,
  }) : super(null) {
    // create streams of matches
    final matchStream = _matchDoc.snapshots().map((snapshot) {
      final data = snapshot.data();
      return data != null ? CroquetMatch.fromJson(data) : null;
    });

    // create streams of players
    final playersStream =
        _matchDoc.collection('players').snapshots().map((querySnapshot) {
      return querySnapshot.docs.map((snapshot) {
        return CroquetPlayer.fromJson(snapshot.data());
      }).toList();
    });

    // create stream of registrations for this user
    final registrationStream = _registrationDoc.snapshots().map((snapshot) {
      final data = snapshot.data();
      return data != null ? CroquetRegistration.fromJson(data) : null;
    });

    // combine into the match object
    _subscription = CombineLatestStream.combine3(
      matchStream,
      playersStream,
      registrationStream,
      (match, players, registration) {
        if (match == null || players.length != 4 || registration == null) {
          return null;
        }
        return CroquetModel(
          match: match,
          players: {for (var player in players) player.ballColor: player},
          registration: registration,
        );
      },
    ).listen(emit);
  }

  final String matchId;
  final UserCredential userCredential;
  late final StreamSubscription _subscription;

  String get _userId => userCredential.user!.uid;

  DocumentReference<Map<String, dynamic>> get _matchDoc =>
      FirebaseFirestore.instance.collection('matches').doc(matchId);

  DocumentReference<Map<String, dynamic>> get _registrationDoc =>
      _matchDoc.collection('registrations').doc(_userId);

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  Future<void> ensureRegistered() async {
    final snapshot = await _registrationDoc.get();
    if (!snapshot.exists) {
      final registration = CroquetRegistration(
        expireAt: currentExpireAt(),
        matchId: matchId,
        userId: _userId,
        playing: {},
      );
      await _registrationDoc.set(registration.toJson());
    }
  }

  bool isPlaying(CroquetBallColor ballColor) {
    if (state == null) {
      return false;
    }
    return state!.registration.playing[ballColor] ?? false;
  }

  Future<void> setPlaying(CroquetBallColor ballColor, bool playing) async {
    final fieldName = 'playing.${ballColor.name}';
    await _registrationDoc.update({fieldName: playing});
  }

  // helper to patch player data
  void updatePlayer(CroquetBallColor color, Map<Object, Object?> data) async {
    await FirebaseFirestore.instance
        .collection('matches')
        .doc(matchId)
        .collection('players')
        .doc(color.name)
        .update(data);
  }

  // helper to create a new match
  static Future<String> createMatch() async {
    // create the match and write it
    final match = CroquetMatch(
      id: newRandomId(),
      expireAt: currentExpireAt(),
      wicketCount: 12,
    );
    final matchDoc =
        FirebaseFirestore.instance.collection('matches').doc(match.id);
    await matchDoc.set(match.toJson());

    // create all the players
    final List<Future> playerFutures = [];
    for (final playerColor in CroquetBallColor.values) {
      // create the player
      final player = CroquetPlayer(
        matchId: match.id,
        ballColor: playerColor,
        deadOn: {
          for (var deadOnBallColor in CroquetBallColor.values)
            if (deadOnBallColor != playerColor) deadOnBallColor: true
        },
        clearedWicket: 0,
        expireAt: match.expireAt,
      );
      final playerDoc = matchDoc.collection('players').doc(playerColor.name);
      playerFutures.add(playerDoc.set(player.toJson()));
    }
    await Future.wait(playerFutures);
    return match.id;
  }
}
