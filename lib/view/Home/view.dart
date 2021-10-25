import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Home/component/app_Bar.dart';
import 'package:simple_api_example/view/Home/component/characters_list.dart';
import 'package:simple_api_example/view/Home/controller/home_Cubit.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>HomeController()..getData(),
            child: Scaffold(
              appBar: homeAppBar(),
              body: HomeCharacterList(),
    ),
    );
  }
}
