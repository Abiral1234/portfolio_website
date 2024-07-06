import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';


class Project2 extends StatefulWidget {
  @override
  _Project2State createState() => _Project2State();
}

class _Project2State extends State<Project2> {
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
                  width: 350,
                  height: 400,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY:3,sigmaX:3), //SigmaX and Y are just for X and Y directions
                    child: Image.asset('assets/images/ToDo.jpg' , alignment: Alignment(0,-1)) ,
                    //here you can use any widget you'd like to blur .
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
                      child: Align( alignment:Alignment.centerLeft , child: Text("To Do App" ,style: TextStyle(fontSize: 30),)),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
                      child: Align(alignment:Alignment.centerLeft ,child: Text("To Do App is a personalized and simple way to get more done.It is a task management app to help you stay organized and manage your day-to-day task. It contains a list of tasks you need to complete or things that you want to do. With this, this app also has some additional features of marking the importance of a task, setting reminders, and more." ,style: TextStyle(fontSize: 15),)),
                    ),
                    SizedBox(height: 180,),
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
  const url = 'https://github.com/Abiral1234/ToDoApp';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/