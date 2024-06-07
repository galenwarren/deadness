import 'package:flutter_bloc/flutter_bloc.dart';

class EditingCubit extends Cubit<bool> {
  EditingCubit() : super(false);

  void toggle() {
    emit(!state);
  }
}
