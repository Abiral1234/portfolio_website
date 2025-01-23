import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_webiste/core/router/router.dart';
import 'package:portfolio_webiste/responsive/desktop_body.dart';
import 'package:portfolio_webiste/responsive/mobile_body.dart';
import 'package:portfolio_webiste/responsive/responsive_layout.dart';

void main() {
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    scrollBehavior: MyCustomScrollBehavior(),
    title: "Who is Abiral?",
    routerConfig: router,
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
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        tabletBody: MyMobileBody(),
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
