import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class KhojNet extends StatefulWidget {
  const KhojNet({Key? key}) : super(key: key);

  @override
  State<KhojNet> createState() => _KhojNetState();
}

class _KhojNetState extends State<KhojNet> {
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
                  top: 250,
                  width: 350,
                  height: 400,
                  child: Image.asset('assets/images/Khojlogo.png' , alignment: Alignment(0,-1)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
                      child: Align( alignment:Alignment.centerLeft , child: Text("KhojNet" ,style: TextStyle(fontSize: 30),)),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 5, 18, 80),
                      child: Align(alignment:Alignment.centerLeft ,child: Text("KhojNet is a online ecommerce app which will allow vendor to put their product on the app after being verified by the admin and customer can buy the products. " ,style: TextStyle(fontSize: 15),)),
                    ),
                    SizedBox(height: 180,),
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
