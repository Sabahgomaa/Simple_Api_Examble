import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api_example/view/Home/models/home_Model.dart';
import 'package:simple_api_example/view/Home/states/home_States.dart';

class HomeController extends Cubit<HomeStates> {
  HomeController() : super(HomeInit());

  static HomeController of(context) => BlocProvider.of(context);
  Dio _dio = Dio();

  List<HomeModel> charactersList = [];

 Future<void> getData() async {
    emit(HomeLoading());
    try {
      final response = await _dio.get(
          'https://www.breakingbadapi.com/api/characters');

      final data = response.data as List;
      data.forEach((element) {
        HomeModel homeModel = HomeModel.fromJson(element);
        charactersList.add(homeModel);
      });
    } catch (e) {
      print(e.toString());
    }
    emit(HomeInit());
  }
}