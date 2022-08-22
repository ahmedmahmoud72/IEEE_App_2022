import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/shared/constants/colors.dart';
class AboutScreen extends StatelessWidget {
   AboutScreen({Key? key}) : super(key: key);

  Color myColor = MyColors.myColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'About Us',
        style:
        TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: myColor),
      ),
    );
  }
}
