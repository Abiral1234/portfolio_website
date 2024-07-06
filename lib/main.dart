import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_webiste/responsive/desktop_body.dart';
import 'package:portfolio_webiste/responsive/mobile_body.dart';
import 'package:portfolio_webiste/responsive/responsive_layout.dart';
import 'package:portfolio_webiste/responsive/tablet_body.dart';
import 'package:portfolio_webiste/sections/ContactMe.dart';
import 'package:portfolio_webiste/sections/Footer.dart';
import 'package:portfolio_webiste/sections/ListView1.dart';
import 'package:portfolio_webiste/sections/Projects.dart';
import 'package:portfolio_webiste/sections/TopSection.dart';

import 'sections/AboutMe.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: "Who is Abiral?",
      home: PortfolioWebsite()
  ));
}
class PortfolioWebsite extends StatefulWidget {

  @override
  State<PortfolioWebsite> createState() => _PortfolioWebsiteState();
}

class _PortfolioWebsiteState extends State<PortfolioWebsite> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
        body: ResponsiveLayout(
          mobileBody: MyMobileBody(),
          tabletBody: MyTabletBody(),
          desktopBody: MyDesktopBody(),
        ),
      );
  }
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

/*
body: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
              AboutMe(),
              ListView1(),
              Projects(),
              ContactMe(),
            ],
          ),
        ),
 */