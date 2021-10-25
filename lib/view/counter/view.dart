import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/counter/controller.dart';
import 'package:simple_api_example/view/counter/state.dart';
import 'package:simple_api_example/view/test/view.dart';
import 'controller.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterController(),
      child: Scaffold(
        appBar: AppBar(),
        body: Builder(
          builder: (context) =>  Center(
              child: TextButton(
                onPressed: (){
                  CounterController.of(context).add();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BlocProvider.value(
                          value: CounterController.of(context),
                          child: TestView())));
                },
                child:Text('Navigate!')),
              ),
        )
      ),
    );
  }
}
// class Text extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = CounterController.of(context);
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(controller.counter.toString()),
//         SizedBox(height: 20),
//
//       ],
//     );
//   }
// }