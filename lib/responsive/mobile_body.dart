import 'package:flutter/material.dart';
import 'package:portfolio_webiste/sections/ContactMe.dart';
import 'package:portfolio_webiste/sections/Footer.dart';
import 'package:portfolio_webiste/sections/ListView1.dart';
import 'package:portfolio_webiste/sections/Projects.dart';
import 'package:portfolio_webiste/sections/TopSection.dart';
import '../sections/AboutMe.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              height: height,
              child: ListView(
                shrinkWrap: true,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TopSection(),
                  AboutMe(),
                  Projects(),
                  ListView1(),
                  ContactMe(),
                  Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
