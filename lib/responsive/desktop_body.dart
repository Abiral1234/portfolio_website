import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_webiste/sections/ContactMe.dart';
import 'package:portfolio_webiste/sections/Footer.dart';
import 'package:portfolio_webiste/sections/ListView1.dart';
import 'package:portfolio_webiste/sections/Projects.dart';
import 'package:portfolio_webiste/sections/TopSection.dart';
import '../ProjectDetails/EAcademiaDetails.dart';
import '../ProjectDetails/KhojNetDetails.dart';
import '../ProjectDetails/gcesAttendanceDetails.dart';
import '../ProjectDetails/toDoAppDetails.dart';
import '../sections/AboutMe.dart';
import '../sections/ProjectCard.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopSection(),
                Row(
                  children: [
                    Container(
                      width: Get.width/2,
                        child: AboutMe()
                    ),
                    Container(
                        width: Get.width/2,
                        child: ContactMe()),
                  ],
                ),
                Projects(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: [
                      ProjectCard(khojNetTitle,khojNetDescription ,khojNetImageUrl,khojNetCodeLink),
                      ProjectCard(eacademiaTitle,eacademiaDescription ,eacademiaImageUrl,ecacademiaCodeLink),
                      ProjectCard(gcesAttendanceTitle,gcesAttendanceDescription ,gcesAttendanceImageUrl,gcesAttendanceCodeLink),
                      ProjectCard(toDoAppTitle,toDoAppDescription ,toDoAppImageUrl,toDoAppCodeLink),
                    ],
                  ),
                ),
                Footer(),
              ],
            ),
    ),
          ),
        ),
      );
  }
}
