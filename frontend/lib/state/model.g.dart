// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CroquetBallImpl _$$CroquetBallImplFromJson(Map<String, dynamic> json) =>
    _$CroquetBallImpl(
      ballColor: $enumDecode(_$CroquetBallColorEnumMap, json['ballColor']),
      deadOnBalls: (json['deadOnBalls'] as List<dynamic>)
          .map((e) => $enumDecode(_$CroquetBallColorEnumMap, e))
          .toList(),
      clearedWicketIndex: (json['clearedWicketIndex'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CroquetBallImplToJson(_$CroquetBallImpl instance) =>
    <String, dynamic>{
      'ballColor': _$CroquetBallColorEnumMap[instance.ballColor]!,
      'deadOnBalls': instance.deadOnBalls
          .map((e) => _$CroquetBallColorEnumMap[e]!)
          .toList(),
      'clearedWicketIndex': instance.clearedWicketIndex,
    };

const _$CroquetBallColorEnumMap = {
  CroquetBallColor.blue: 'blue',
  CroquetBallColor.red: 'red',
  CroquetBallColor.black: 'black',
  CroquetBallColor.yellow: 'yellow',
};

_$CroquetMatchImpl _$$CroquetMatchImplFromJson(Map<String, dynamic> json) =>
    _$CroquetMatchImpl(
      id: json['id'] as String,
      expireAt: DateTime.parse(json['expireAt'] as String),
      balls: (json['balls'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CroquetBallColorEnumMap, k),
            CroquetBall.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$CroquetMatchImplToJson(_$CroquetMatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expireAt': instance.expireAt.toIso8601String(),
      'balls': instance.balls
          .map((k, e) => MapEntry(_$CroquetBallColorEnumMap[k]!, e.toJson())),
    };
