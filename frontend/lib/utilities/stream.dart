import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocExtension<T> on BlocBase<T> {
  Stream<T> get behaviorStream async* {
    yield state;
    yield* stream;
  }
}
