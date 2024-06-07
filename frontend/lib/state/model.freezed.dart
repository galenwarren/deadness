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

CroquetDeadness _$CroquetDeadnessFromJson(Map<String, dynamic> json) {
  return _CroquetDeadness.fromJson(json);
}

/// @nodoc
mixin _$CroquetDeadness {
  Map<String, int> get clearedWickets => throw _privateConstructorUsedError;
  List<String> get deadnessClasses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CroquetDeadnessCopyWith<CroquetDeadness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CroquetDeadnessCopyWith<$Res> {
  factory $CroquetDeadnessCopyWith(
          CroquetDeadness value, $Res Function(CroquetDeadness) then) =
      _$CroquetDeadnessCopyWithImpl<$Res, CroquetDeadness>;
  @useResult
  $Res call({Map<String, int> clearedWickets, List<String> deadnessClasses});
}

/// @nodoc
class _$CroquetDeadnessCopyWithImpl<$Res, $Val extends CroquetDeadness>
    implements $CroquetDeadnessCopyWith<$Res> {
  _$CroquetDeadnessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clearedWickets = null,
    Object? deadnessClasses = null,
  }) {
    return _then(_value.copyWith(
      clearedWickets: null == clearedWickets
          ? _value.clearedWickets
          : clearedWickets // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      deadnessClasses: null == deadnessClasses
          ? _value.deadnessClasses
          : deadnessClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CroquetDeadnessImplCopyWith<$Res>
    implements $CroquetDeadnessCopyWith<$Res> {
  factory _$$CroquetDeadnessImplCopyWith(_$CroquetDeadnessImpl value,
          $Res Function(_$CroquetDeadnessImpl) then) =
      __$$CroquetDeadnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, int> clearedWickets, List<String> deadnessClasses});
}

/// @nodoc
class __$$CroquetDeadnessImplCopyWithImpl<$Res>
    extends _$CroquetDeadnessCopyWithImpl<$Res, _$CroquetDeadnessImpl>
    implements _$$CroquetDeadnessImplCopyWith<$Res> {
  __$$CroquetDeadnessImplCopyWithImpl(
      _$CroquetDeadnessImpl _value, $Res Function(_$CroquetDeadnessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clearedWickets = null,
    Object? deadnessClasses = null,
  }) {
    return _then(_$CroquetDeadnessImpl(
      clearedWickets: null == clearedWickets
          ? _value._clearedWickets
          : clearedWickets // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      deadnessClasses: null == deadnessClasses
          ? _value._deadnessClasses
          : deadnessClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CroquetDeadnessImpl implements _CroquetDeadness {
  const _$CroquetDeadnessImpl(
      {required final Map<String, int> clearedWickets,
      required final List<String> deadnessClasses})
      : _clearedWickets = clearedWickets,
        _deadnessClasses = deadnessClasses;

  factory _$CroquetDeadnessImpl.fromJson(Map<String, dynamic> json) =>
      _$$CroquetDeadnessImplFromJson(json);

  final Map<String, int> _clearedWickets;
  @override
  Map<String, int> get clearedWickets {
    if (_clearedWickets is EqualUnmodifiableMapView) return _clearedWickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_clearedWickets);
  }

  final List<String> _deadnessClasses;
  @override
  List<String> get deadnessClasses {
    if (_deadnessClasses is EqualUnmodifiableListView) return _deadnessClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deadnessClasses);
  }

  @override
  String toString() {
    return 'CroquetDeadness(clearedWickets: $clearedWickets, deadnessClasses: $deadnessClasses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetDeadnessImpl &&
            const DeepCollectionEquality()
                .equals(other._clearedWickets, _clearedWickets) &&
            const DeepCollectionEquality()
                .equals(other._deadnessClasses, _deadnessClasses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_clearedWickets),
      const DeepCollectionEquality().hash(_deadnessClasses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CroquetDeadnessImplCopyWith<_$CroquetDeadnessImpl> get copyWith =>
      __$$CroquetDeadnessImplCopyWithImpl<_$CroquetDeadnessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CroquetDeadnessImplToJson(
      this,
    );
  }
}

abstract class _CroquetDeadness implements CroquetDeadness {
  const factory _CroquetDeadness(
      {required final Map<String, int> clearedWickets,
      required final List<String> deadnessClasses}) = _$CroquetDeadnessImpl;

  factory _CroquetDeadness.fromJson(Map<String, dynamic> json) =
      _$CroquetDeadnessImpl.fromJson;

  @override
  Map<String, int> get clearedWickets;
  @override
  List<String> get deadnessClasses;
  @override
  @JsonKey(ignore: true)
  _$$CroquetDeadnessImplCopyWith<_$CroquetDeadnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CroquetRegistration _$CroquetRegistrationFromJson(Map<String, dynamic> json) {
  return _CroquetRegistration.fromJson(json);
}

/// @nodoc
mixin _$CroquetRegistration {
  DateTime get expireAt => throw _privateConstructorUsedError;
  String get matchId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Map<CroquetBallColor, bool> get playing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CroquetRegistrationCopyWith<CroquetRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CroquetRegistrationCopyWith<$Res> {
  factory $CroquetRegistrationCopyWith(
          CroquetRegistration value, $Res Function(CroquetRegistration) then) =
      _$CroquetRegistrationCopyWithImpl<$Res, CroquetRegistration>;
  @useResult
  $Res call(
      {DateTime expireAt,
      String matchId,
      String userId,
      Map<CroquetBallColor, bool> playing});
}

/// @nodoc
class _$CroquetRegistrationCopyWithImpl<$Res, $Val extends CroquetRegistration>
    implements $CroquetRegistrationCopyWith<$Res> {
  _$CroquetRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expireAt = null,
    Object? matchId = null,
    Object? userId = null,
    Object? playing = null,
  }) {
    return _then(_value.copyWith(
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CroquetRegistrationImplCopyWith<$Res>
    implements $CroquetRegistrationCopyWith<$Res> {
  factory _$$CroquetRegistrationImplCopyWith(_$CroquetRegistrationImpl value,
          $Res Function(_$CroquetRegistrationImpl) then) =
      __$$CroquetRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime expireAt,
      String matchId,
      String userId,
      Map<CroquetBallColor, bool> playing});
}

/// @nodoc
class __$$CroquetRegistrationImplCopyWithImpl<$Res>
    extends _$CroquetRegistrationCopyWithImpl<$Res, _$CroquetRegistrationImpl>
    implements _$$CroquetRegistrationImplCopyWith<$Res> {
  __$$CroquetRegistrationImplCopyWithImpl(_$CroquetRegistrationImpl _value,
      $Res Function(_$CroquetRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expireAt = null,
    Object? matchId = null,
    Object? userId = null,
    Object? playing = null,
  }) {
    return _then(_$CroquetRegistrationImpl(
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      playing: null == playing
          ? _value._playing
          : playing // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CroquetRegistrationImpl implements _CroquetRegistration {
  const _$CroquetRegistrationImpl(
      {required this.expireAt,
      required this.matchId,
      required this.userId,
      required final Map<CroquetBallColor, bool> playing})
      : _playing = playing;

  factory _$CroquetRegistrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CroquetRegistrationImplFromJson(json);

  @override
  final DateTime expireAt;
  @override
  final String matchId;
  @override
  final String userId;
  final Map<CroquetBallColor, bool> _playing;
  @override
  Map<CroquetBallColor, bool> get playing {
    if (_playing is EqualUnmodifiableMapView) return _playing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playing);
  }

  @override
  String toString() {
    return 'CroquetRegistration(expireAt: $expireAt, matchId: $matchId, userId: $userId, playing: $playing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetRegistrationImpl &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._playing, _playing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expireAt, matchId, userId,
      const DeepCollectionEquality().hash(_playing));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CroquetRegistrationImplCopyWith<_$CroquetRegistrationImpl> get copyWith =>
      __$$CroquetRegistrationImplCopyWithImpl<_$CroquetRegistrationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CroquetRegistrationImplToJson(
      this,
    );
  }
}

abstract class _CroquetRegistration implements CroquetRegistration {
  const factory _CroquetRegistration(
          {required final DateTime expireAt,
          required final String matchId,
          required final String userId,
          required final Map<CroquetBallColor, bool> playing}) =
      _$CroquetRegistrationImpl;

  factory _CroquetRegistration.fromJson(Map<String, dynamic> json) =
      _$CroquetRegistrationImpl.fromJson;

  @override
  DateTime get expireAt;
  @override
  String get matchId;
  @override
  String get userId;
  @override
  Map<CroquetBallColor, bool> get playing;
  @override
  @JsonKey(ignore: true)
  _$$CroquetRegistrationImplCopyWith<_$CroquetRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CroquetPlayer _$CroquetPlayerFromJson(Map<String, dynamic> json) {
  return _CroquetPlayer.fromJson(json);
}

/// @nodoc
mixin _$CroquetPlayer {
  DateTime get expireAt => throw _privateConstructorUsedError;
  String get matchId => throw _privateConstructorUsedError;
  CroquetBallColor get ballColor => throw _privateConstructorUsedError;
  Map<CroquetBallColor, bool> get deadOn => throw _privateConstructorUsedError;
  int get clearedWicket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CroquetPlayerCopyWith<CroquetPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CroquetPlayerCopyWith<$Res> {
  factory $CroquetPlayerCopyWith(
          CroquetPlayer value, $Res Function(CroquetPlayer) then) =
      _$CroquetPlayerCopyWithImpl<$Res, CroquetPlayer>;
  @useResult
  $Res call(
      {DateTime expireAt,
      String matchId,
      CroquetBallColor ballColor,
      Map<CroquetBallColor, bool> deadOn,
      int clearedWicket});
}

/// @nodoc
class _$CroquetPlayerCopyWithImpl<$Res, $Val extends CroquetPlayer>
    implements $CroquetPlayerCopyWith<$Res> {
  _$CroquetPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expireAt = null,
    Object? matchId = null,
    Object? ballColor = null,
    Object? deadOn = null,
    Object? clearedWicket = null,
  }) {
    return _then(_value.copyWith(
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      ballColor: null == ballColor
          ? _value.ballColor
          : ballColor // ignore: cast_nullable_to_non_nullable
              as CroquetBallColor,
      deadOn: null == deadOn
          ? _value.deadOn
          : deadOn // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, bool>,
      clearedWicket: null == clearedWicket
          ? _value.clearedWicket
          : clearedWicket // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CroquetPlayerImplCopyWith<$Res>
    implements $CroquetPlayerCopyWith<$Res> {
  factory _$$CroquetPlayerImplCopyWith(
          _$CroquetPlayerImpl value, $Res Function(_$CroquetPlayerImpl) then) =
      __$$CroquetPlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime expireAt,
      String matchId,
      CroquetBallColor ballColor,
      Map<CroquetBallColor, bool> deadOn,
      int clearedWicket});
}

/// @nodoc
class __$$CroquetPlayerImplCopyWithImpl<$Res>
    extends _$CroquetPlayerCopyWithImpl<$Res, _$CroquetPlayerImpl>
    implements _$$CroquetPlayerImplCopyWith<$Res> {
  __$$CroquetPlayerImplCopyWithImpl(
      _$CroquetPlayerImpl _value, $Res Function(_$CroquetPlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expireAt = null,
    Object? matchId = null,
    Object? ballColor = null,
    Object? deadOn = null,
    Object? clearedWicket = null,
  }) {
    return _then(_$CroquetPlayerImpl(
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      ballColor: null == ballColor
          ? _value.ballColor
          : ballColor // ignore: cast_nullable_to_non_nullable
              as CroquetBallColor,
      deadOn: null == deadOn
          ? _value._deadOn
          : deadOn // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, bool>,
      clearedWicket: null == clearedWicket
          ? _value.clearedWicket
          : clearedWicket // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CroquetPlayerImpl extends _CroquetPlayer {
  const _$CroquetPlayerImpl(
      {required this.expireAt,
      required this.matchId,
      required this.ballColor,
      required final Map<CroquetBallColor, bool> deadOn,
      required this.clearedWicket})
      : _deadOn = deadOn,
        super._();

  factory _$CroquetPlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CroquetPlayerImplFromJson(json);

  @override
  final DateTime expireAt;
  @override
  final String matchId;
  @override
  final CroquetBallColor ballColor;
  final Map<CroquetBallColor, bool> _deadOn;
  @override
  Map<CroquetBallColor, bool> get deadOn {
    if (_deadOn is EqualUnmodifiableMapView) return _deadOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_deadOn);
  }

  @override
  final int clearedWicket;

  @override
  String toString() {
    return 'CroquetPlayer(expireAt: $expireAt, matchId: $matchId, ballColor: $ballColor, deadOn: $deadOn, clearedWicket: $clearedWicket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetPlayerImpl &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.ballColor, ballColor) ||
                other.ballColor == ballColor) &&
            const DeepCollectionEquality().equals(other._deadOn, _deadOn) &&
            (identical(other.clearedWicket, clearedWicket) ||
                other.clearedWicket == clearedWicket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expireAt, matchId, ballColor,
      const DeepCollectionEquality().hash(_deadOn), clearedWicket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CroquetPlayerImplCopyWith<_$CroquetPlayerImpl> get copyWith =>
      __$$CroquetPlayerImplCopyWithImpl<_$CroquetPlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CroquetPlayerImplToJson(
      this,
    );
  }
}

abstract class _CroquetPlayer extends CroquetPlayer {
  const factory _CroquetPlayer(
      {required final DateTime expireAt,
      required final String matchId,
      required final CroquetBallColor ballColor,
      required final Map<CroquetBallColor, bool> deadOn,
      required final int clearedWicket}) = _$CroquetPlayerImpl;
  const _CroquetPlayer._() : super._();

  factory _CroquetPlayer.fromJson(Map<String, dynamic> json) =
      _$CroquetPlayerImpl.fromJson;

  @override
  DateTime get expireAt;
  @override
  String get matchId;
  @override
  CroquetBallColor get ballColor;
  @override
  Map<CroquetBallColor, bool> get deadOn;
  @override
  int get clearedWicket;
  @override
  @JsonKey(ignore: true)
  _$$CroquetPlayerImplCopyWith<_$CroquetPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CroquetMatch _$CroquetMatchFromJson(Map<String, dynamic> json) {
  return _CroquetMatch.fromJson(json);
}

/// @nodoc
mixin _$CroquetMatch {
  DateTime get expireAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get wicketCount => throw _privateConstructorUsedError;

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
  $Res call({DateTime expireAt, String id, int wicketCount});
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
    Object? expireAt = null,
    Object? id = null,
    Object? wicketCount = null,
  }) {
    return _then(_value.copyWith(
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      wicketCount: null == wicketCount
          ? _value.wicketCount
          : wicketCount // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({DateTime expireAt, String id, int wicketCount});
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
    Object? expireAt = null,
    Object? id = null,
    Object? wicketCount = null,
  }) {
    return _then(_$CroquetMatchImpl(
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      wicketCount: null == wicketCount
          ? _value.wicketCount
          : wicketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CroquetMatchImpl implements _CroquetMatch {
  const _$CroquetMatchImpl(
      {required this.expireAt, required this.id, required this.wicketCount});

  factory _$CroquetMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$CroquetMatchImplFromJson(json);

  @override
  final DateTime expireAt;
  @override
  final String id;
  @override
  final int wicketCount;

  @override
  String toString() {
    return 'CroquetMatch(expireAt: $expireAt, id: $id, wicketCount: $wicketCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetMatchImpl &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.wicketCount, wicketCount) ||
                other.wicketCount == wicketCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expireAt, id, wicketCount);

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
      {required final DateTime expireAt,
      required final String id,
      required final int wicketCount}) = _$CroquetMatchImpl;

  factory _CroquetMatch.fromJson(Map<String, dynamic> json) =
      _$CroquetMatchImpl.fromJson;

  @override
  DateTime get expireAt;
  @override
  String get id;
  @override
  int get wicketCount;
  @override
  @JsonKey(ignore: true)
  _$$CroquetMatchImplCopyWith<_$CroquetMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CroquetModel {
  CroquetMatch get match => throw _privateConstructorUsedError;
  Map<CroquetBallColor, CroquetPlayer> get players =>
      throw _privateConstructorUsedError;
  CroquetRegistration get registration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CroquetModelCopyWith<CroquetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CroquetModelCopyWith<$Res> {
  factory $CroquetModelCopyWith(
          CroquetModel value, $Res Function(CroquetModel) then) =
      _$CroquetModelCopyWithImpl<$Res, CroquetModel>;
  @useResult
  $Res call(
      {CroquetMatch match,
      Map<CroquetBallColor, CroquetPlayer> players,
      CroquetRegistration registration});

  $CroquetMatchCopyWith<$Res> get match;
  $CroquetRegistrationCopyWith<$Res> get registration;
}

/// @nodoc
class _$CroquetModelCopyWithImpl<$Res, $Val extends CroquetModel>
    implements $CroquetModelCopyWith<$Res> {
  _$CroquetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? players = null,
    Object? registration = null,
  }) {
    return _then(_value.copyWith(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as CroquetMatch,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, CroquetPlayer>,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as CroquetRegistration,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CroquetMatchCopyWith<$Res> get match {
    return $CroquetMatchCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CroquetRegistrationCopyWith<$Res> get registration {
    return $CroquetRegistrationCopyWith<$Res>(_value.registration, (value) {
      return _then(_value.copyWith(registration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CroquetModelImplCopyWith<$Res>
    implements $CroquetModelCopyWith<$Res> {
  factory _$$CroquetModelImplCopyWith(
          _$CroquetModelImpl value, $Res Function(_$CroquetModelImpl) then) =
      __$$CroquetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CroquetMatch match,
      Map<CroquetBallColor, CroquetPlayer> players,
      CroquetRegistration registration});

  @override
  $CroquetMatchCopyWith<$Res> get match;
  @override
  $CroquetRegistrationCopyWith<$Res> get registration;
}

/// @nodoc
class __$$CroquetModelImplCopyWithImpl<$Res>
    extends _$CroquetModelCopyWithImpl<$Res, _$CroquetModelImpl>
    implements _$$CroquetModelImplCopyWith<$Res> {
  __$$CroquetModelImplCopyWithImpl(
      _$CroquetModelImpl _value, $Res Function(_$CroquetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? players = null,
    Object? registration = null,
  }) {
    return _then(_$CroquetModelImpl(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as CroquetMatch,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<CroquetBallColor, CroquetPlayer>,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as CroquetRegistration,
    ));
  }
}

/// @nodoc

class _$CroquetModelImpl extends _CroquetModel {
  const _$CroquetModelImpl(
      {required this.match,
      required final Map<CroquetBallColor, CroquetPlayer> players,
      required this.registration})
      : _players = players,
        super._();

  @override
  final CroquetMatch match;
  final Map<CroquetBallColor, CroquetPlayer> _players;
  @override
  Map<CroquetBallColor, CroquetPlayer> get players {
    if (_players is EqualUnmodifiableMapView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_players);
  }

  @override
  final CroquetRegistration registration;

  @override
  String toString() {
    return 'CroquetModel(match: $match, players: $players, registration: $registration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CroquetModelImpl &&
            (identical(other.match, match) || other.match == match) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.registration, registration) ||
                other.registration == registration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, match,
      const DeepCollectionEquality().hash(_players), registration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CroquetModelImplCopyWith<_$CroquetModelImpl> get copyWith =>
      __$$CroquetModelImplCopyWithImpl<_$CroquetModelImpl>(this, _$identity);
}

abstract class _CroquetModel extends CroquetModel {
  const factory _CroquetModel(
      {required final CroquetMatch match,
      required final Map<CroquetBallColor, CroquetPlayer> players,
      required final CroquetRegistration registration}) = _$CroquetModelImpl;
  const _CroquetModel._() : super._();

  @override
  CroquetMatch get match;
  @override
  Map<CroquetBallColor, CroquetPlayer> get players;
  @override
  CroquetRegistration get registration;
  @override
  @JsonKey(ignore: true)
  _$$CroquetModelImplCopyWith<_$CroquetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
