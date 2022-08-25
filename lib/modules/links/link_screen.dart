import 'package:flutter/material.dart';
import 'package:my_app/shared/components/committe/committe_component.dart';
import 'package:my_app/shared/constants/colors.dart';
import 'package:my_app/shared/responsive/device_info_widget.dart';
import 'package:my_app/shared/responsive/enums/device_type.dart';
class  LinkScreen extends StatelessWidget {
   LinkScreen({Key? key}) : super(key: key);
  Color myColor= MyColors.myColor;
  @override
  Widget build(BuildContext context) {
    return  InfoWidget(
        builder: (context, deviceInfo)
        {
          double maxWidth = deviceInfo.width;
          double maxHeight = deviceInfo.height;
          bool isMob = deviceInfo.deviceType == DeviceType.mobile;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: myColor,
              centerTitle: true,
              title: Text(
                'Links',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            body: ListView.separated(
                itemBuilder: (context,index)=> Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomCommittee(
                      height: maxHeight*0.1, width: maxWidth*0.8, committeeName:'Links'),
                ),
                separatorBuilder:(context,index)=> SizedBox(
                  height:maxHeight*0.01,
                ) ,
                itemCount:  10),
          );
        }
        );




  }
}
