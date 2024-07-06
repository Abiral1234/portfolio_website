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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100,0,0,0),
            child: Text('Copyright ©, Abiral Pokhrel 2022', style: TextStyle(color: Colors.white),),
          ),
        
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,100,0),
            child: Container(
              child: Wrap(
                alignment: WrapAlignment.end,
                direction: Axis.horizontal,
                spacing: 30.0, 
                
                children: [
                  IconButton(
                  onPressed: () async{
                      launch("https://t.me/Abiral1234");
                    },
                      icon: FaIcon(FontAwesomeIcons.telegram,color: Color(0xff0088CC),size: 30,)
                  ),
                  IconButton(
                      onPressed: () async{
                        launch("https://www.linkedin.com/in/abiral-pokhrel-a3088b212/");
                      },
                      icon:  FaIcon(FontAwesomeIcons.linkedin,color: Color(0xff0072b1),size: 30,),
                  ),
                  IconButton(
                      onPressed: () async{
                        launch("https://www.instagram.com/abiral_pokhrel/");
                      },
                      icon: FaIcon(FontAwesomeIcons.instagram,color: Color(0xffbc2a8d),size: 30,),),
                  IconButton(
                      onPressed: () async{
                        launch("https://soundcloud.com/abiral-681636707");
                      },
                      icon: FaIcon(FontAwesomeIcons.soundcloud,color: Colors.orange,size: 30,),
                  ),




                ],
              ),
            ),
          ),
          
          
        ],
      )
    );
  }
}
