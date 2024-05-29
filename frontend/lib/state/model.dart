import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

enum CroquetBallColor { blue, red, black, yellow }

int compareCroquetBallColor(CroquetBallColor color1, CroquetBallColor color2) {
  return color1.index - color2.index;
}

extension CroquetBallColorExtension on CroquetBallColor {
  Color get color => switch (this) {
        CroquetBallColor.blue => Colors.blue,
        CroquetBallColor.red => Colors.red,
        CroquetBallColor.black => Colors.black,
        CroquetBallColor.yellow => Colors.yellow,
      };

  Color get foregroundColor => switch (this) {
        CroquetBallColor.blue => Colors.white,
        CroquetBallColor.red => Colors.white,
        CroquetBallColor.black => Colors.white,
        CroquetBallColor.yellow => Colors.black,
      };
}

@freezed
class CroquetBall with _$CroquetBall {
  const factory CroquetBall({
    required CroquetBallColor ballColor,
    required List<CroquetBallColor> deadOnBalls,
    required int? clearedWicketIndex,
  }) = _CroquetBall;

  factory CroquetBall.fromJson(Map<String, Object?> json) =>
      _$CroquetBallFromJson(json);

  static int compare(CroquetBall ball1, CroquetBall ball2) {
    return ball1.ballColor.index - ball2.ballColor.index;
  }
}

@freezed
class CroquetMatch with _$CroquetMatch {
  const factory CroquetMatch({
    required String id,
    required DateTime expireAt,
    required Map<CroquetBallColor, CroquetBall> balls,
  }) = _CroquetMatch;

  factory CroquetMatch.fromJson(Map<String, Object?> json) =>
      _$CroquetMatchFromJson(json);
}

class MatchCubit extends Cubit<CroquetMatch?> {
  MatchCubit({required String matchId}) : super(null) {
    _subscription = FirebaseFirestore.instance
        .collection('matches')
        .doc(matchId)
        .snapshots()
        .listen((snapshot) {
      final json = snapshot.data();
      if (json != null) {
        emit(CroquetMatch.fromJson(json));
      } else {
        emit(null);
      }
    });
  }

  late final StreamSubscription _subscription;

  CroquetMatch get match => state!;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
