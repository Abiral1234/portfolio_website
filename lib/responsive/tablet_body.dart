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

class MyTabletBody extends StatefulWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  State<MyTabletBody> createState() => _MyTabletBodyState();
}

class _MyTabletBodyState extends State<MyTabletBody> {
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
                AboutMe(),

                Projects(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: [
                      ProjectCard(khojNetTitle,khojNetDescription ,khojNetImageUrl,khojNetCodeLink),
                      ProjectCard(eacademiaTitle,eacademiaDescription ,eacademiaImageUrl,ecacademiaCodeLink),
                      ProjectCard(gcesAttendanceTitle,gcesAttendanceDescription ,gcesAttendanceImageUrl,gcesAttendanceCodeLink),
                      ProjectCard(toDoAppTitle,toDoAppDescription ,toDoAppImageUrl,toDoAppCodeLink),
                    ],
                  ),
                ),
                ContactMe(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
