import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_webiste/ProjectDetails/gcesAttendanceDetails.dart';
import 'package:portfolio_webiste/ProjectDetails/toDoAppDetails.dart';
import 'package:portfolio_webiste/sections/ProjectCard.dart';
import 'package:portfolio_webiste/sections/SingleProjects/Project2.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../ProjectDetails/EAcademiaDetails.dart';
import '../ProjectDetails/KhojNetDetails.dart';
import 'SingleProjects/EAcademia.dart';
import 'SingleProjects/KhojNet.dart';
import 'SingleProjects/Project1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ListView1 extends StatefulWidget {
  @override
  State<ListView1> createState() => _ListView1State();
}
int activeIndex=0;
class _ListView1State extends State<ListView1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Column(
        children: [
          CarouselSlider(
            items: [
              ProjectCard(khojNetTitle,khojNetDescription ,khojNetImageUrl,khojNetCodeLink),
              ProjectCard(eacademiaTitle,eacademiaDescription ,eacademiaImageUrl,ecacademiaCodeLink),
              ProjectCard(gcesAttendanceTitle,gcesAttendanceDescription ,gcesAttendanceImageUrl,gcesAttendanceCodeLink),
              ProjectCard(toDoAppTitle,toDoAppDescription ,toDoAppImageUrl,toDoAppCodeLink),
            ],

            options: CarouselOptions(
              enableInfiniteScroll: false,
              viewportFraction:  0.9,
              height:500,
                onPageChanged: (index,reason){
                  setState(() {
                    activeIndex =index;
                  });
                }
                ),
          ),
          SizedBox(height: 15,),
          buildIndicator(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
//
//
// items: [
// ProjectCard(khojNetTitle,khojNetDescription ,khojNetImageUrl,khojNetCodeLink),
// ProjectCard(eacademiaTitle,eacademiaDescription ,eacademiaImageUrl,ecacademiaCodeLink),
// ProjectCard(gcesAttendanceTitle,gcesAttendanceDescription ,gcesAttendanceImageUrl,gcesAttendanceCodeLink),
// ProjectCard(toDoAppTitle,toDoAppDescription ,toDoAppImageUrl,toDoAppCodeLink),
// ],
Widget buildIndicator() {
  return AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: 4,
    effect: SlideEffect(
      dotHeight: 10,
      dotWidth: 10,
      activeDotColor: Colors.blue,
      dotColor: Colors.blueGrey.shade50,
    ),
  );
}
