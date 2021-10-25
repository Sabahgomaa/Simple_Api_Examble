import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/counter/state.dart';

class CounterController extends Cubit<CounterStates> {
  CounterController() : super(CounterInit());

  static CounterController of(context) => BlocProvider.of(context);

  int counter = 0;

  String getData() {
    print('Data ' * 88);
    return 'data';
  }

  void add() {
    counter++;
    emit(CounterRebuild());
  }
}
