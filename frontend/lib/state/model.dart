// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

enum CroquetBallColor { blue, red, black, yellow }

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
class CroquetDeadness with _$CroquetDeadness {
  const factory CroquetDeadness({
    required Map<String, int> clearedWickets,
    required List<String> deadnessClasses,
  }) = _CroquetDeadness;

  factory CroquetDeadness.fromJson(Map<String, Object?> json) =>
      _$CroquetDeadnessFromJson(json);
}

@freezed
class CroquetRegistration with _$CroquetRegistration {
  const factory CroquetRegistration({
    required DateTime expireAt,
    required String matchId,
    required String userId,
    required Map<CroquetBallColor, bool> playing,
  }) = _CroquetRegistration;

  factory CroquetRegistration.fromJson(Map<String, Object?> json) =>
      _$CroquetRegistrationFromJson(json);
}

@freezed
class CroquetPlayer with _$CroquetPlayer {
  const CroquetPlayer._();

  const factory CroquetPlayer({
    required DateTime expireAt,
    required String matchId,
    required CroquetBallColor ballColor,
    required Map<CroquetBallColor, bool> deadOn,
    required int clearedWicket,
  }) = _CroquetPlayer;

  factory CroquetPlayer.fromJson(Map<String, Object?> json) =>
      _$CroquetPlayerFromJson(json);

  bool isDeadOn(CroquetBallColor color) {
    return deadOn[color] ?? false;
  }

  bool isAliveOn(CroquetBallColor color) {
    return (color != ballColor && !isDeadOn(color));
  }
}

@freezed
class CroquetMatch with _$CroquetMatch {
  const factory CroquetMatch({
    required DateTime expireAt,
    required String id,
    required int wicketCount,
  }) = _CroquetMatch;

  factory CroquetMatch.fromJson(Map<String, Object?> json) =>
      _$CroquetMatchFromJson(json);
}

@freezed
class CroquetModel with _$CroquetModel {
  const CroquetModel._();

  const factory CroquetModel({
    required CroquetMatch match,
    required Map<CroquetBallColor, CroquetPlayer> players,
    required CroquetRegistration registration,
  }) = _CroquetModel;

  CroquetDeadness get deadness {
    return CroquetDeadness(
      clearedWickets: players.map((ballColor, player) =>
          MapEntry(ballColor.name, player.clearedWicket)),
      deadnessClasses: players.values.fold([], (classes, player) {
        return CroquetBallColor.values.fold(classes, (classes, otherBallColor) {
          if (player.isDeadOn(otherBallColor)) {
            final className =
                '${player.ballColor.name}-on-${otherBallColor.name}';
            classes.add(className);
          }
          return classes;
        });
      }),
    );
  }
}
