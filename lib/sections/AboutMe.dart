import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        padding: EdgeInsets.all(10),

        child: Column(
          children: [
            Align( alignment: Alignment.centerLeft,
                child: Text('About Me', style: GoogleFonts.raleway(fontSize: 35) )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text(
                '''A highly skilled Flutter Developer with more than 2 years of experience in mobile app development.Adept at delivering high-quality, efficient, and user-centric applications.Committed to best coding practices and design principles.'''
              ),),
          ],
        ),
      ),
    );
  }
}
