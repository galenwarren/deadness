import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';

@freezed
class ComparableList<T> with _$ComparableList<T> {
  const factory ComparableList(List<T> list) = _ComparableList<T>;
}

@freezed
class ComparableSet<T> with _$ComparableSet<T> {
  const factory ComparableSet(Set<T> set) = _ComparableSet<T>;
}
