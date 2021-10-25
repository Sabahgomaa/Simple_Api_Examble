import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Terms/controller.dart';
import 'package:simple_api_example/view/Terms/dialog.dart';
import 'package:simple_api_example/view/Terms/states.dart';

class Timerview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => TermsCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<TermsCubit, TermsStates>(builder: (context, state) {
          final controller = TermsCubit.of(context);
          return Column(
            children: [
              InkWell(
                child: Text('Show Terms'),
                onTap: () => showTermsDialog(context),
              ),
              CheckboxListTile(
                value: controller.isAgree,
                onChanged: controller.agree,
              ),
              ElevatedButton(
                  onPressed: controller.isAgree ? () {} : null, child: Text('SignUp'),)
            ],
          );
        }),
      ),
    );
  }
}
