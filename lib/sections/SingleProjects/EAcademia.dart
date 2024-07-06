import 'dart:ui';

import 'package:flutter/material.dart';
class EAcademia extends StatefulWidget {
  const EAcademia({Key? key}) : super(key: key);

  @override
  State<EAcademia> createState() => _EAcademiaState();
}

class _EAcademiaState extends State<EAcademia> {
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
                  top: 20,
                  width: 350,
                  height: 400,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY:6,sigmaX:6), //SigmaX and Y are just for X and Y directions
                    child: Image.asset('assets/images/eacademia.PNG' , alignment: Alignment(0,-1),width: 80,height: 80,) ,
                    //here you can use any widget you'd like to blur .
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
                      child: Align( alignment:Alignment.centerLeft , child: Text("E-Academia" ,style: TextStyle(fontSize: 30),)),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
                      child: Align(alignment:Alignment.centerLeft ,child: Text('''E-ACADEMIA is a College Management Application which will help to manage attendance, keep track of the library books, provide notifications about any events, and many more. Admin will assign students in a classroom and also assign subjects for the teacher. Students could check their attendance information and get noticed about any kinds of events and track their books.''' ,style: TextStyle(fontSize: 15),)),
                    ),
                    SizedBox(height: 160,),
                    ElevatedButton(
                      onPressed: ()=>{

                      },
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
