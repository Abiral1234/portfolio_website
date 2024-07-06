import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SingleProjects/Project1.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
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
