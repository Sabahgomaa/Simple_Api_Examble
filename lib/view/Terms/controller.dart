import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Terms/states.dart';

class TermsCubit extends Cubit<TermsStates> {
  TermsCubit() : super(TermsInit());
  static TermsCubit of(context) => BlocProvider.of(context);
  bool isAgree = false;

  void agree(bool? value) {
    if (isAgree) return;
    isAgree = true;
    emit(TermsInit());
  }
}
