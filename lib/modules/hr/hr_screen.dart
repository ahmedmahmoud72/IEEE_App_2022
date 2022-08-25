import 'package:flutter/material.dart';
import 'package:my_app/shared/components/member/member_component.dart';
import 'package:my_app/shared/constants/colors.dart';
import 'package:my_app/shared/responsive/device_info_widget.dart';
import 'package:my_app/shared/responsive/enums/device_type.dart';
class HRScreen extends StatelessWidget {
    HRScreen({Key? key}) : super(key: key);
  Color myColor=MyColors.myColor;
  @override
  Widget build(BuildContext context) {
    return InfoWidget(
        builder: (context, deviceInfo) {
          double maxWidth = deviceInfo.width;
          double maxHeight = deviceInfo.height;
          bool isMob = deviceInfo.deviceType == DeviceType.mobile;

          return Scaffold(
              appBar: AppBar(
                backgroundColor: myColor,
                centerTitle: true,
                title: Text(
                  'HR Committee',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 25.0),
                    itemBuilder: (context, index) =>
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: member(maxWidth*.35,
                              maxHeight*.1,
                              'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg',
                              'name'),
                        )),
              )
          );
        }
        );
        } //






  }

