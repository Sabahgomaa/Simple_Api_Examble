import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Login/controller.dart';
import 'package:simple_api_example/view/Login/states.dart';

class LoginConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = LoginController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is LoginLoading
          ? CupertinoActivityIndicator()
          : ElevatedButton(
              onPressed: controller.login,
              child: Text('Login'),
            ),
    );
  }
}
