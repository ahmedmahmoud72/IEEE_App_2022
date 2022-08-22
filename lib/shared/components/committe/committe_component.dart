import 'package:flutter/material.dart';
import 'package:my_app/shared/constants/colors.dart';

class CustomCommittee extends StatelessWidget {
  double height;
  double width;

  String committeeName;

  CustomCommittee({required this.height,required this.width,required this.committeeName,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 7,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(children: [
          Text(
            committeeName,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: MyColors.myColor),
          ),
          const Spacer(),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white12,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: MyColors.myColor,
                )),
          )
        ]),
      ),
    );
  }
}