// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CroquetBall _$CroquetBallFromJson(Map<String, dynamic> json) {
  return _CroquetBall.fromJson(json);
}

/// @nodoc
mixin _$CroquetBall {
  CroquetBallColor get ballColor => throw _privateConstructorUsedError;
  List<CroquetBallColor> get deadOnBalls => throw _privateConstructorUsedError;
  int? get clearedWicketIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CroquetBallCopyWith<CroquetBall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CroquetBallCopyWith<$Res> {
  factory $CroquetBallCopyWith(
          CroquetBall value, $Res Function(CroquetBall) then) =
      _$CroquetBallCopyWithImpl<$Res, CroquetBall>;
  @useResult
  $Res call(
      {CroquetBallColor ballColor,
      List<CroquetBallColor> deadOnBalls,
      int? clearedWicketIndex});
}

/// @nodoc
class _$CroquetBallCopyWithImpl<$Res, $Val extends CroquetBall>
    implements $CroquetBallCopyWith<$Res> {
  _$CroquetBallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ballColor = null,
    Object? deadOnBalls = null,
    Object? clearedWicketIndex = freezed,
  }) {
    return _then(_value.copyWith(
      ballColor: null == ballColor
          ? _value.ballColor
          : ballColor // ignore: cast_nullable_to_non_nullable
              as CroquetBallColor,
      deadOnBalls: null == deadOnBalls
          ? _value.deadOnBalls
          : deadOnBalls // ignore: cast_nullable_to_non_nullable
              as List<CroquetBallColor>,
      clearedWicketIndex: freezed == clearedWicketIndex
          ? _value.clearedWicketIndex
          : clearedWicketIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CroquetBallImplCopyWith<$Res>
    implements $CroquetBallCopyWith<$Res> {
  factory _$$CroquetBallImplCopyWith(
          _$CroquetBallImpl value, $Res Function(_$CroquetBallImpl) then) =
      __$$CroquetBallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CroquetBallColor ballColor,
      List<CroquetBallColor> deadOnBalls,
      int? clearedWicketIndex});
}

/// @nodoc
class __$$CroquetBallImplCopyWithImpl<$Res>
    extends _$CroquetBallCopyWithImpl<$Res, _$CroquetBallImpl>
    implements _$$CroquetBallImplCopyWith<$Res> {
  __$$CroquetBallImplCopyWithImpl(
      _$CroquetBallImpl _value, $Res Function(_$CroquetBallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ballColor = null,
    Object? deadOnBalls = null,
    Object? clearedWicketIndex = freezed,
  }) {
    return _then(_$CroquetBallImpl(
      ballColor: null == ballColor
          ? _value.ballColor
          : ballColor // ignore: cast_nullable_to_non_nullable
              as CroquetBallColor,
      deadOnBalls: null == deadOnBalls
          ? _value._deadOnBalls
          : deadOnBalls // ignore: cast_nullable_to_non_nullable
              as List<CroquetBallColor>,
      clearedWicketIndex: freezed == clearedWicketIndex
          ? _value.clearedWicketIndex
          : clearedWicketIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CroquetBallImpl implements _CroquetBall {
  const _$CroquetBallImpl(
      {required this.ballColor,
      required final List<CroquetBallColor> deadOnBalls,
      required this.clearedWicketIndex})
      : _deadOnBalls = deadOnBalls;

  factory _$CroquetBallImpl.fromJson(Map<String, dynamic> json) =>
      _$$CroquetBallImplFromJson(json);

  @override
  final CroquetBallColor ballColor;
  final List<CroquetBallColor> _deadOnBalls;
  @override
  List<CroquetBallColor> get deadOnBalls {
    if (_deadOnBalls is EqualUnmodifiableListView) return _deadOnBalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deadOnBalls);
  }

  @override
  final int? clearedWicketIndex;

  @override
  String toString() {
    return 'CroquetBall(ballColor: $ballColor, deadOnBalls: $deadOnBalls, clearedWicketIndex: $clearedWicketIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetBallImpl &&
            (identical(other.ballColor, ballColor) ||
                other.ballColor == ballColor) &&
            const DeepCollectionEquality()
                .equals(other._deadOnBalls, _deadOnBalls) &&
            (identical(other.clearedWicketIndex, clearedWicketIndex) ||
                other.clearedWicketIndex == clearedWicketIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ballColor,
      const DeepCollectionEquality().hash(_deadOnBalls), clearedWicketIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CroquetBallImplCopyWith<_$CroquetBallImpl> get copyWith =>
      __$$CroquetBallImplCopyWithImpl<_$CroquetBallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CroquetBallImplToJson(
      this,
    );
  }
}

abstract class _CroquetBall implements CroquetBall {
  const factory _CroquetBall(
      {required final CroquetBallColor ballColor,
      required final List<CroquetBallColor> deadOnBalls,
      required final int? clearedWicketIndex}) = _$CroquetBallImpl;

  factory _CroquetBall.fromJson(Map<String, dynamic> json) =
      _$CroquetBallImpl.fromJson;

  @override
  CroquetBallColor get ballColor;
  @override
  List<CroquetBallColor> get deadOnBalls;
  @override
  int? get clearedWicketIndex;
  @override
  @JsonKey(ignore: true)
  _$$CroquetBallImplCopyWith<_$CroquetBallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CroquetMatch _$CroquetMatchFromJson(Map<String, dynamic> json) {
  return _CroquetMatch.fromJson(json);
}

/// @nodoc
mixin _$CroquetMatch {
  String get id => throw _privateConstructorUsedError;
  DateTime get expireAt => throw _privateConstructorUsedError;
  Map<CroquetBallColor, CroquetBall> get balls =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CroquetMatchCopyWith<CroquetMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CroquetMatchCopyWith<$Res> {
  factory $CroquetMatchCopyWith(
          CroquetMatch value, $Res Function(CroquetMatch) then) =
      _$CroquetMatchCopyWithImpl<$Res, CroquetMatch>;
  @useResult
  $Res call(
      {String id, DateTime expireAt, Map<CroquetBallColor, CroquetBall> balls});
}

/// @nodoc
class _$CroquetMatchCopyWithImpl<$Res, $Val extends CroquetMatch>
    implements $CroquetMatchCopyWith<$Res> {
  _$CroquetMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expireAt = null,
    Object? balls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balls: null == balls
          ? _value.balls
          : balls // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, CroquetBall>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CroquetMatchImplCopyWith<$Res>
    implements $CroquetMatchCopyWith<$Res> {
  factory _$$CroquetMatchImplCopyWith(
          _$CroquetMatchImpl value, $Res Function(_$CroquetMatchImpl) then) =
      __$$CroquetMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, DateTime expireAt, Map<CroquetBallColor, CroquetBall> balls});
}

/// @nodoc
class __$$CroquetMatchImplCopyWithImpl<$Res>
    extends _$CroquetMatchCopyWithImpl<$Res, _$CroquetMatchImpl>
    implements _$$CroquetMatchImplCopyWith<$Res> {
  __$$CroquetMatchImplCopyWithImpl(
      _$CroquetMatchImpl _value, $Res Function(_$CroquetMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expireAt = null,
    Object? balls = null,
  }) {
    return _then(_$CroquetMatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balls: null == balls
          ? _value._balls
          : balls // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, CroquetBall>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CroquetMatchImpl implements _CroquetMatch {
  const _$CroquetMatchImpl(
      {required this.id,
      required this.expireAt,
      required final Map<CroquetBallColor, CroquetBall> balls})
      : _balls = balls;

  factory _$CroquetMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$CroquetMatchImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime expireAt;
  final Map<CroquetBallColor, CroquetBall> _balls;
  @override
  Map<CroquetBallColor, CroquetBall> get balls {
    if (_balls is EqualUnmodifiableMapView) return _balls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_balls);
  }

  @override
  String toString() {
    return 'CroquetMatch(id: $id, expireAt: $expireAt, balls: $balls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetMatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            const DeepCollectionEquality().equals(other._balls, _balls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, expireAt, const DeepCollectionEquality().hash(_balls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CroquetMatchImplCopyWith<_$CroquetMatchImpl> get copyWith =>
      __$$CroquetMatchImplCopyWithImpl<_$CroquetMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CroquetMatchImplToJson(
      this,
    );
  }
}

abstract class _CroquetMatch implements CroquetMatch {
  const factory _CroquetMatch(
          {required final String id,
          required final DateTime expireAt,
          required final Map<CroquetBallColor, CroquetBall> balls}) =
      _$CroquetMatchImpl;

  factory _CroquetMatch.fromJson(Map<String, dynamic> json) =
      _$CroquetMatchImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get expireAt;
  @override
  Map<CroquetBallColor, CroquetBall> get balls;
  @override
  @JsonKey(ignore: true)
  _$$CroquetMatchImplCopyWith<_$CroquetMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
