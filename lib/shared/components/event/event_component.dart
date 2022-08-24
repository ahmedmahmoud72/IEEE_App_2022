import 'package:flutter/material.dart';
import 'package:my_app/shared/constants/colors.dart';

class CustomEvent extends StatelessWidget {
  double height, width;
  String eventName, startDate, endDate, description, text, imageUrl;
  Color? color;
  Function function;

  CustomEvent(
      {Key? key,
        required this.eventName,
        required this.startDate,
        required this.endDate,
        required this.description,
        required this.height,
        required this.width,
        required this.text,
        required this.imageUrl,
        this.color,
        required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          imageUrl,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white54,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 7,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: width,
          child: ExpansionTile(
            backgroundColor: Colors.white,
            title: Text(
              eventName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: ListTile(
                        leading: const Icon(
                          Icons.date_range,
                        ),
                        title: Text(
                          startDate,
                          style: const TextStyle(fontSize: 15.0),
                        ),
                      )),
                  const Expanded(
                      flex: 2,
                      child: ListTile(
                          title: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: Colors.grey,
                          ))),
                  Expanded(
                      flex: 6,
                      child: ListTile(
                        leading: const Icon(Icons.date_range),
                        title: Text(
                          startDate,
                          style: const TextStyle(fontSize: 15.0),
                        ),
                      )),
                ],
              ),
              ListTile(
                  title: Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: const TextStyle(fontSize: 16),
                  )),
              ListTile(
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                    child: customButton(
                        function: () {},
                        text: 'GO',
                        height: height * 0.10,
                        color: MyColors.myColor),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

Widget customButton(
    {double? width,
      double? height,
      Color? color,
      required Function function,
      required String text}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: color,
      ),
      height: height,
      width: width,
      child: MaterialButton(
        minWidth: width,
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
