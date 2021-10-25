import 'package:flutter/material.dart';
import 'package:simple_api_example/view/Login/controller.dart';

class LoginFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = LoginController.of(context);
    return Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(children: [
            TextFormField(
                validator: (value) {
                  if (value!.isEmpty)
                    return 'Empty field!';
                  else if (!value.contains('@'))
                    return 'missing @!';
                  else
                    return null;
                },
                controller: controller.emailController,
                decoration: InputDecoration(hintText: 'Email')),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty)
                  return 'Empty field!';
                else if (value.length < 4)
                  return 'Length';
                else
                  return null;
              },
              controller: controller.passwordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ]),
        ));
  }
}
