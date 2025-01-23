import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ProjectCard extends StatefulWidget {
  String title;
  String description;
  String backgroundImage;
  String codeLink;
  ProjectCard(this.title,this.description,this.backgroundImage,this.codeLink,{Key? key}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool showDetail =false;
  showDetails(){
    setState(() {
      showDetail = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5),
      child: MouseRegion(
           cursor: SystemMouseCursors.click,
           onEnter: (event){
            showDetails();
           },
           onExit: (event){
            setState(() {
              showDetail = false;
            });
           },
        
        child: Container(
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade200,
                style: BorderStyle.solid,
              ),
              boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
        
            child:  Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,80,20,20),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX:  showDetail?3: 0.0,
                        sigmaY: showDetail?3: 0.0,
                        tileMode: TileMode.decal
                      ),
                      child: Opacity(
                        opacity: 1,
                        child: Center(
                          child: Container(
                            height: 400,
                            child: Image.asset(
                              widget.backgroundImage ,
                              alignment: Alignment(0,-1),
                              fit: BoxFit.cover,)),
                        ),
                      ),
                    ),
                  ),
                  showDetail?
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,80,20,20),
                    child: Container(
                      height: 400,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ):Container(),
        
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align( alignment:Alignment.centerLeft , child: Text(widget.title ,style: GoogleFonts.raleway(fontSize: 30 ),))),
                        showDetail ?  Expanded(
                            flex: 4,
                            child: Align(alignment:Alignment.topLeft ,child: Text(widget.description,style: GoogleFonts.raleway(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                             ),)))
                            :Expanded(
                              flex: 4,
                              child: Container()),
                       MouseRegion(
                           cursor: SystemMouseCursors.click,
                         child: GestureDetector(
                          
                            onTap: () async{
                         
                                  var url = widget.codeLink;
                                  if(canLaunch(url) != null){
                                   launch(url);
                                  }
                                  else{
                                    throw('Cannot launch the url');
                                  }
                            },
                            child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade200,
                                    style: BorderStyle.solid,
                                  ),
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                alignment: Alignment.bottomCenter,
                                child: Align(
                                    alignment:Alignment.center , child: Text("View Project" ,style: GoogleFonts.raleway(fontSize: 20 , color: Colors.white),),
                                )
                            ),
                          ),
                       ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
        
                ]
            )
        ),
      ),
    );
  }
}
