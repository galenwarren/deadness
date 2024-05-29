import 'dart:js_interop';

import 'package:flutter_bloc/flutter_bloc.dart';

@JS('ccc.initializeCasting')
external void initializeCasting(JSObject cubit);

class CastingCubit extends Cubit<bool> {
  CastingCubit() : super(false) {
    initializeCasting(createJSInteropWrapper(this));
  }

  @JSExport('updateState')
  void updateState(String state) {
    switch (state) {
      case "NO_SESSION":
        emit(false);
      // case "SESSION_STARTING":
      case "SESSION_STARTED":
        emit(true);
      case "SESSION_START_FAILED":
        emit(false);
      // case "SESSION_ENDING":
      case "SESSION_ENDED":
        emit(false);
      case "SESSION_RESUMED":
        emit(true);
    }
  }
}
