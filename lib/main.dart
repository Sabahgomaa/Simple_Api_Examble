import 'package:flutter/material.dart';
import 'package:simple_api_example/core/route.dart';
import 'package:simple_api_example/view/Timer/view.dart';
import 'package:simple_api_example/view/counter/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: TimerView(),
    );
  }
}
