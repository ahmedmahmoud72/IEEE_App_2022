import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/modules/about/about_screen.dart';
import 'package:my_app/modules/articles/articles_screen.dart';
import 'package:my_app/modules/events/events_screen.dart';
import 'package:my_app/modules/home/home_screen.dart';

import 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreens = [
     HomeScreen(),
     EventsScreen(),
     ArticlesScreen(),
     AboutScreen(),
  ];
  void changeBottom(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }
}
