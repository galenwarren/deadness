// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComparableList<T> {
  List<T> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComparableListCopyWith<T, ComparableList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComparableListCopyWith<T, $Res> {
  factory $ComparableListCopyWith(
          ComparableList<T> value, $Res Function(ComparableList<T>) then) =
      _$ComparableListCopyWithImpl<T, $Res, ComparableList<T>>;
  @useResult
  $Res call({List<T> list});
}

/// @nodoc
class _$ComparableListCopyWithImpl<T, $Res, $Val extends ComparableList<T>>
    implements $ComparableListCopyWith<T, $Res> {
  _$ComparableListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComparableListImplCopyWith<T, $Res>
    implements $ComparableListCopyWith<T, $Res> {
  factory _$$ComparableListImplCopyWith(_$ComparableListImpl<T> value,
          $Res Function(_$ComparableListImpl<T>) then) =
      __$$ComparableListImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> list});
}

/// @nodoc
class __$$ComparableListImplCopyWithImpl<T, $Res>
    extends _$ComparableListCopyWithImpl<T, $Res, _$ComparableListImpl<T>>
    implements _$$ComparableListImplCopyWith<T, $Res> {
  __$$ComparableListImplCopyWithImpl(_$ComparableListImpl<T> _value,
      $Res Function(_$ComparableListImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ComparableListImpl<T>(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$ComparableListImpl<T> implements _ComparableList<T> {
  const _$ComparableListImpl(final List<T> list) : _list = list;

  final List<T> _list;
  @override
  List<T> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ComparableList<$T>(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparableListImpl<T> &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparableListImplCopyWith<T, _$ComparableListImpl<T>> get copyWith =>
      __$$ComparableListImplCopyWithImpl<T, _$ComparableListImpl<T>>(
          this, _$identity);
}

abstract class _ComparableList<T> implements ComparableList<T> {
  const factory _ComparableList(final List<T> list) = _$ComparableListImpl<T>;

  @override
  List<T> get list;
  @override
  @JsonKey(ignore: true)
  _$$ComparableListImplCopyWith<T, _$ComparableListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComparableSet<T> {
  Set<T> get set => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComparableSetCopyWith<T, ComparableSet<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComparableSetCopyWith<T, $Res> {
  factory $ComparableSetCopyWith(
          ComparableSet<T> value, $Res Function(ComparableSet<T>) then) =
      _$ComparableSetCopyWithImpl<T, $Res, ComparableSet<T>>;
  @useResult
  $Res call({Set<T> set});
}

/// @nodoc
class _$ComparableSetCopyWithImpl<T, $Res, $Val extends ComparableSet<T>>
    implements $ComparableSetCopyWith<T, $Res> {
  _$ComparableSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
  }) {
    return _then(_value.copyWith(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as Set<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComparableSetImplCopyWith<T, $Res>
    implements $ComparableSetCopyWith<T, $Res> {
  factory _$$ComparableSetImplCopyWith(_$ComparableSetImpl<T> value,
          $Res Function(_$ComparableSetImpl<T>) then) =
      __$$ComparableSetImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Set<T> set});
}

/// @nodoc
class __$$ComparableSetImplCopyWithImpl<T, $Res>
    extends _$ComparableSetCopyWithImpl<T, $Res, _$ComparableSetImpl<T>>
    implements _$$ComparableSetImplCopyWith<T, $Res> {
  __$$ComparableSetImplCopyWithImpl(_$ComparableSetImpl<T> _value,
      $Res Function(_$ComparableSetImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
  }) {
    return _then(_$ComparableSetImpl<T>(
      null == set
          ? _value._set
          : set // ignore: cast_nullable_to_non_nullable
              as Set<T>,
    ));
  }
}

/// @nodoc

class _$ComparableSetImpl<T> implements _ComparableSet<T> {
  const _$ComparableSetImpl(final Set<T> set) : _set = set;

  final Set<T> _set;
  @override
  Set<T> get set {
    if (_set is EqualUnmodifiableSetView) return _set;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_set);
  }

  @override
  String toString() {
    return 'ComparableSet<$T>(set: $set)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparableSetImpl<T> &&
            const DeepCollectionEquality().equals(other._set, _set));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_set));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparableSetImplCopyWith<T, _$ComparableSetImpl<T>> get copyWith =>
      __$$ComparableSetImplCopyWithImpl<T, _$ComparableSetImpl<T>>(
          this, _$identity);
}

abstract class _ComparableSet<T> implements ComparableSet<T> {
  const factory _ComparableSet(final Set<T> set) = _$ComparableSetImpl<T>;

  @override
  Set<T> get set;
  @override
  @JsonKey(ignore: true)
  _$$ComparableSetImplCopyWith<T, _$ComparableSetImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
