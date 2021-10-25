import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Timer/states.dart';

class TimerCubit extends Cubit<TimerStates> {
  TimerCubit() : super(TimerCount());

  static TimerCubit of(context) => BlocProvider.of(context);

  int counter = 60;
  Timer? _timer;
  void count() {
    counter = 60;
    emit(TimerCount());
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (counter <= 0) {
        emit(TimerFinish());
        timer.cancel();
      } else {
        counter--;
        emit(TimerCount());
      }
    });
  }

  @override
  Future<void> close() {
    if (_timer != null) _timer!.cancel();
    return super.close();
  }
}
