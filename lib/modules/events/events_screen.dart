import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_app/models/device_info_model.dart';
import 'package:my_app/shared/components/device_info_widget.dart';
import 'package:my_app/shared/components/event/event_component.dart';
import 'package:my_app/shared/constants/colors.dart';

class EventsScreen extends StatelessWidget {
  EventsScreen({Key? key}) : super(key: key);
  Color myColor = MyColors.myColor;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(builder: (BuildContext context, DeviceInfo deviceInfo) {
      double maxWidth = deviceInfo.width;
      double maxHeight = deviceInfo.height;
      // bool isMob = deviceInfo.deviceType == DeviceType.mobile;
      var imageList = [
        'assets/images/Event image.jpg',
        'assets/images/3 steps.jpg',
        'assets/images/build your career.jpg',
        'assets/images/traviling to the future.jpg'
      ];
      return Scaffold(
        appBar: AppBar(
          backgroundColor: myColor,
          centerTitle: true,
          title: const Text(
            'Events',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  ),
                  items: imageList
                      .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.asset(
                                  e,
                                  width: maxWidth * 0.8,
                                  height: maxHeight * 0.5,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0),
                child: Text(
                  'Events Details',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(
                  height: maxHeight * 0.02,
                ),
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                  child: CustomEvent(
                    imageUrl: 'assets/images/Event image.jpg',
                    eventName: 'TECHY IEEE CAREER',
                    startDate: '29/7/2022',
                    endDate: '1/8/2022',
                    height: maxHeight * 0.4,
                    width: maxWidth * 0.9,
                    description:
                        'Spread technology awareness and improve members’ technical and personal skills through a hardworking community, higher levels of teamwork, self-study, and training.',
                    function: () {},
                    text: 'GO',
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
