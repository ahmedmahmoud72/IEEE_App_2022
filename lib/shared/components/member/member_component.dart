import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/shared/constants/colors.dart';

class  member extends StatelessWidget {
  double width, height;
  String image, name;

  member(this.width, this.height, this.image, this.name);
  Color myColor= MyColors.myColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(10),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: width*0.7,height: width*0.7,
            child: CircleAvatar(
              backgroundColor:myColor,
              backgroundImage: NetworkImage(
                image,
              ),
              radius: height * 0.09,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20.0,
              color:myColor,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.fromBorderSide(BorderSide(color:myColor, width: 1))),
    );
  }
}
