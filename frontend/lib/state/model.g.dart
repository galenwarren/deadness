// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CroquetDeadnessImpl _$$CroquetDeadnessImplFromJson(
        Map<String, dynamic> json) =>
    _$CroquetDeadnessImpl(
      clearedWickets: Map<String, int>.from(json['clearedWickets'] as Map),
      deadnessClasses: (json['deadnessClasses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CroquetDeadnessImplToJson(
        _$CroquetDeadnessImpl instance) =>
    <String, dynamic>{
      'clearedWickets': instance.clearedWickets,
      'deadnessClasses': instance.deadnessClasses,
    };

_$CroquetRegistrationImpl _$$CroquetRegistrationImplFromJson(
        Map<String, dynamic> json) =>
    _$CroquetRegistrationImpl(
      expireAt: DateTime.parse(json['expireAt'] as String),
      matchId: json['matchId'] as String,
      userId: json['userId'] as String,
      playing: (json['playing'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$CroquetBallColorEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$$CroquetRegistrationImplToJson(
        _$CroquetRegistrationImpl instance) =>
    <String, dynamic>{
      'expireAt': instance.expireAt.toIso8601String(),
      'matchId': instance.matchId,
      'userId': instance.userId,
      'playing': instance.playing
          .map((k, e) => MapEntry(_$CroquetBallColorEnumMap[k]!, e)),
    };

const _$CroquetBallColorEnumMap = {
  CroquetBallColor.blue: 'blue',
  CroquetBallColor.red: 'red',
  CroquetBallColor.black: 'black',
  CroquetBallColor.yellow: 'yellow',
};

_$CroquetPlayerImpl _$$CroquetPlayerImplFromJson(Map<String, dynamic> json) =>
    _$CroquetPlayerImpl(
      expireAt: DateTime.parse(json['expireAt'] as String),
      matchId: json['matchId'] as String,
      ballColor: $enumDecode(_$CroquetBallColorEnumMap, json['ballColor']),
      deadOn: (json['deadOn'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$CroquetBallColorEnumMap, k), e as bool),
      ),
      clearedWicket: (json['clearedWicket'] as num).toInt(),
    );

Map<String, dynamic> _$$CroquetPlayerImplToJson(_$CroquetPlayerImpl instance) =>
    <String, dynamic>{
      'expireAt': instance.expireAt.toIso8601String(),
      'matchId': instance.matchId,
      'ballColor': _$CroquetBallColorEnumMap[instance.ballColor]!,
      'deadOn': instance.deadOn
          .map((k, e) => MapEntry(_$CroquetBallColorEnumMap[k]!, e)),
      'clearedWicket': instance.clearedWicket,
    };

_$CroquetMatchImpl _$$CroquetMatchImplFromJson(Map<String, dynamic> json) =>
    _$CroquetMatchImpl(
      expireAt: DateTime.parse(json['expireAt'] as String),
      id: json['id'] as String,
      wicketCount: (json['wicketCount'] as num).toInt(),
    );

Map<String, dynamic> _$$CroquetMatchImplToJson(_$CroquetMatchImpl instance) =>
    <String, dynamic>{
      'expireAt': instance.expireAt.toIso8601String(),
      'id': instance.id,
      'wicketCount': instance.wicketCount,
    };
