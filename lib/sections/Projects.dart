import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/responsive_widget.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
        bool isSmallScreen = (ResponsiveWidget.isSmall(context) ||
        ResponsiveWidget.isXSmall(context));
    return Column(
      children: [
        
        Padding(
          padding: isSmallScreen?EdgeInsets.fromLTRB(30, 10, 0, 0):  EdgeInsets.fromLTRB(100, 10, 0, 0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Projects:" , style: GoogleFonts.raleway(fontSize: 30),)),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
