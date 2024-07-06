import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black,
      child :
      Column(
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(0,50,0,0),
            child: Container(
              width: Get.width/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                  onTap: () async{
                      launch("https://t.me/Abiral1234");
                    },
                      child: FaIcon(FontAwesomeIcons.telegram,color: Color(0xff0088CC),size: 30,)
                  ),
                  GestureDetector(
                      onTap: () async{
                        launch("https://www.linkedin.com/in/abiral-pokhrel-a3088b212/");
                      },
                      child:  FaIcon(FontAwesomeIcons.linkedin,color: Color(0xff0072b1),size: 30,),
                  ),
                  GestureDetector(
                      onTap: () async{
                        launch("https://www.instagram.com/abiral_pokhrel/");
                      },
                      child: FaIcon(FontAwesomeIcons.instagram,color: Color(0xffbc2a8d),size: 30,),),
                  GestureDetector(
                      onTap: () async{
                        launch("https://soundcloud.com/abiral-681636707");
                      },
                      child: FaIcon(FontAwesomeIcons.soundcloud,color: Colors.orange,size: 30,),
                  ),




                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align( alignment:Alignment.center ,child: Text('Copyright ©, Abiral Pokhrel 2022', style: TextStyle(color: Colors.white),)),
        ],
      )
    );
  }
}
