import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout/home_layout.dart';
import 'layout/cubit/app_cubit.dart';
import 'modules/events/events_screen.dart';
import 'modules/hr/hr_screen.dart';
import 'modules/links/link_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child:  MaterialApp(
                debugShowCheckedModeBanner: false,
                home:HRScreen()  ,
              )
    );}}
