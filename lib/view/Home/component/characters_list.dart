import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/Widget/loading_indicator.dart';
import 'package:simple_api_example/view/Home/controller/home_Cubit.dart';
import 'package:simple_api_example/view/Home/states/home_States.dart';
import 'package:simple_api_example/view/Home/widget/character_card.dart';

class HomeCharacterList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller=HomeController.of(context);
    return BlocBuilder(
      bloc: controller,
        builder: (context,state)=> state is HomeLoading ? LoadingIndicator() : ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: controller.charactersList.length,
            itemBuilder: (context,index){
              final char = controller.charactersList[index];
              return Charactercard(
                img: char.image,
                name: char.name,
              );
            }
        )
    );

  }
}
