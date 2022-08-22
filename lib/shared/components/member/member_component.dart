import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class member extends StatelessWidget {
  double width, height;
  String image, name;

  member(this.width, this.height, this.image, this.name);

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
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                image,
              ),
              radius: height * 0.09,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.blue,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.fromBorderSide(BorderSide(color: Colors.blue, width: 1))),
    );
  }
}
