import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';


class Project1 extends StatefulWidget {
  @override
  _Project1State createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 340,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            style: BorderStyle.solid,
          ),

          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        child:  Stack(
          children: [
            Positioned( //Image
              top: 10,
              width: 400,
              height: 400,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY:5,sigmaX:5), //SigmaX and Y are just for X and Y directions
                child: Image.asset('assets/images/GCESattendance.PNG' , alignment: Alignment.bottomLeft) ,
                //here you can use any widget you'd like to blur .
          ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
                  child: Align( alignment:Alignment.centerLeft , child: Text("GCES Attendance" ,style: TextStyle(fontSize: 30),)),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
                  child: Align(alignment:Alignment.centerLeft ,child: Text("GCES Attendance is an Attendance Management System which will help teacher to take attendance and get total attendance and percentage of attendance. College admin can add the new students for the upcoming batches so this website is of future use as well. Teacher could select the batch attendance of more than one batch. Students also could check about their attendance information and get noticed about any kinds of events or holidays in the college." ,style: TextStyle(fontSize: 15),)),
                ),
                SizedBox(height: 125,),
                ElevatedButton(
                  onPressed: ()=>{},
                  child: Container(
                    height: 40,
                    alignment: Alignment.bottomCenter,
                      child: Align(
                          alignment:Alignment.center , child: Text("View Code" ,style: TextStyle(fontSize: 25 , color: Colors.white),)
                      )
                  ),
                ),
              ],
            ),

          ]
        )
      ),
    );
  }
}
/*_launchURL() async {
  const url = 'https://github.com/Abiral1234/MinorProject1-GCESAttendance';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/