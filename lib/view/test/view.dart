import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/counter/controller.dart';
import 'package:simple_api_example/view/counter/state.dart';

class TestView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: BlocBuilder<CounterController, CounterStates>(
        builder: (context, state) =>Center(
      child:  InkWell(
      onTap: () {},
    child: Text(CounterController.of(context).counter.toString(),
    style: TextStyle(fontSize: 50),
    ),
    )
      ),
    )
    );
  }
}
