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
        decoration:  BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            style: BorderStyle.solid,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.2),
              spreadRadius: 8,
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
            Padding(
               padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Align( alignment: Alignment.centerLeft,
                  child: Text('About Me', style: GoogleFonts.raleway(fontSize: 30) )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Center(
                child: Text(
                 
                  '''A highly skilled Flutter Developer with years of experience in mobile app development.Adept at delivering high-quality, efficient, and user-centric applications.''',
                  overflow: TextOverflow.fade,
                style: GoogleFonts.raleway(fontSize: 15 )
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
