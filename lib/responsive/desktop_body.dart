import 'package:flutter/material.dart';
import 'package:portfolio_webiste/sections/ContactMe.dart';
import 'package:portfolio_webiste/sections/Footer.dart';
import 'package:portfolio_webiste/sections/Projects.dart';
import 'package:portfolio_webiste/sections/TopSection.dart';
import '../ProjectDetails/EAcademiaDetails.dart';
import '../ProjectDetails/KhojNetDetails.dart';
import '../ProjectDetails/e-Pauna.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TopSection(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: AboutMe()),
                    Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: ContactMe()),
                  ],
                ),
                Projects(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 80),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: [
                      ProjectCard(ePaunaTitle, ePaunaDescription,
                          ePaunaImageUrl, ePaunaCodeLink),
                      ProjectCard(khojNetTitle, khojNetDescription,
                          khojNetImageUrl, khojNetCodeLink),
                      ProjectCard(eacademiaTitle, eacademiaDescription,
                          eacademiaImageUrl, ecacademiaCodeLink),
                      ProjectCard(
                          gcesAttendanceTitle,
                          gcesAttendanceDescription,
                          gcesAttendanceImageUrl,
                          gcesAttendanceCodeLink),
                      ProjectCard(toDoAppTitle, toDoAppDescription,
                          toDoAppImageUrl, toDoAppCodeLink),
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
