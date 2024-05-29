import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/model.dart';

class ActiveBallsCubit extends Cubit<Set<CroquetBallColor>> {
  ActiveBallsCubit() : super(const {});

  bool isActive(CroquetBallColor color) => state.contains(color);

  void setActive(CroquetBallColor color, bool active) {
    final cloned = state.toSet();
    if (active) {
      cloned.add(color);
    } else {
      cloned.remove(color);
    }
    emit(cloned);
  }

  List<CroquetBallColor> get sorted {
    final ballColors = state.toList();
    ballColors.sort(Enum.compareByIndex);
    return ballColors;
  }
}
