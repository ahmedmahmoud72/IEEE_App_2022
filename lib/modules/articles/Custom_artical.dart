import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';


class CustomArtical extends StatelessWidget{
  List<CarouselItem> itemList;
  String title,details;
  double width,height;

  CustomArtical(
      this.itemList, this.title, this.details, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     width: width,
     height: height,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         CustomCarouselSlider(
           items: itemList,
           height: height*.7,


           subHeight: 50,
           width:width,
           autoplay: true,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,

           children: [
             
             TextButton(onPressed: (){}, child:  Text('read more')),
           ],
         ),
         Text(details),

       ],
     ),
   );
  }


}

