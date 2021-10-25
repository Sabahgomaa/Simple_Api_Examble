import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Timer/controller.dart';
import 'package:simple_api_example/view/Timer/states.dart';

class TimerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit()..count(),
      child: Scaffold(
        body: Center(
          child:
              BlocBuilder<TimerCubit, TimerStates>(builder: (context, state) {
            final controller = TimerCubit.of(context);
            if (state is TimerFinish)
              return ElevatedButton(
                onPressed: controller.count,
                child: Text('Resend code!'),
              );
            return Text('00.' + controller.counter.toString().padLeft(2, '0'));
          }),
        ),
      ),
    );
  }
}
