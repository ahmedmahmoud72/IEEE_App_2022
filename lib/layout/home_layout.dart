import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/shared/constants/colors.dart';
import 'cubit/app_cubit.dart';
import 'cubit/app_state.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);
  Color myColor = MyColors.myColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return 
          SafeArea(
            child: Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              animationDuration: const Duration(milliseconds: 500),
              backgroundColor: myColor,
              onTap: (index) {
                cubit.changeBottom(index);
              },
              items: const [
                Icon(
                  (Icons.home),
                ),
                Icon(
                  (Icons.event),
                ),
                Icon(
                  (Icons.article_outlined),
                ),
                Icon(
                  (Icons.group_rounded),
                ),
              ],
            ),
        ),
          );
      },
    );
  }
}
