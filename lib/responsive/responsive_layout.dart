import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

   ResponsiveLayout({required this.mobileBody,required this.tabletBody, required this.desktopBody, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 500){
            return mobileBody;
          }
          if(constraints.maxWidth>500 && constraints.maxWidth <800){
            return tabletBody;
          }
          else{
            return desktopBody;
          }

        }
    );
  }
}
