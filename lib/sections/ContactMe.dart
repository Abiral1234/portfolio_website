import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,20,20,20),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Service Offerings",style: GoogleFonts.raleway(fontSize: 25),),
              SizedBox(height: 10,),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade200,
                      style: BorderStyle.solid,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Front End Development",style:GoogleFonts.raleway()),
                  )
                  ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,20,0),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: (){
                          final toEmail ='abiral.pokhrel99@gmail.com';
                          final subject = '';
                          final body = '';
                          final url = 'mailto:$toEmail';
                          launch(url);
                      
                        },
                        child: Container(
                            decoration:BoxDecoration(
                              border: Border.all(
                              color: Colors.grey.shade200,
                              style: BorderStyle.solid,
                              ),
                        boxShadow: [
                        BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                          ],
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Icon(Icons.waving_hand_sharp,color: Colors.white,),
                                  ),
                                  Text("Hire Me",style:GoogleFonts.raleway(color: Colors.white)),
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                     cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: (){
                        downloadFile('/lib/Abiral Pokhrel CV.pdf');
                      },
                      child: Container(
                          decoration:BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade200,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Icon(Icons.download ,color: Colors.white,),
                                ),
                                Text("Download CV",style:GoogleFonts.raleway(color: Colors.white)),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

downloadFile(url){
  AnchorElement anchorElement = new AnchorElement(href: url);
  anchorElement.download ='Abiral Pokhrel CV';
  anchorElement.click();
}
