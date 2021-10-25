import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/core/route.dart';
import 'package:simple_api_example/view/Home/view.dart';
import 'package:simple_api_example/view/Login/states.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController() : super(LoginInit());
  static LoginController of(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;
    emit(LoginLoading());
    final formData = FormData.fromMap(
        {'email': emailController.text, 'password': passwordController.text});
    final response = await Dio().put('', data: formData);
    final data = response.data as Map;
    try {
      final response = await Dio().post('', data: formData);
      final data = response.data as Map;
      // if (data.containsKey('message'))
      //   //ScaffoldMessenger.of(MagicRouter.currentContext)
      //     //  .showSnackBar(SnackBar(content: Text('Error!')));
      // else
      //   MagicRouter.navigateAndPopAll(HomeView());
    } catch (e, s) {
      print(e);

      /// Dio Error 500
      print(s);

      /// Line 50 file login_view.dart
    }
    emit(LoginInit());
  }
}
