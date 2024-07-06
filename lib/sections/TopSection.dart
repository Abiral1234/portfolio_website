import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';


class TopSection extends StatefulWidget {
  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 200, maxHeight: 200 ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/BlueDots.gif"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(
                          'Hi \nThere!',
                          textStyle: const TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),

                        ),
                        FadeAnimatedText(
                          'I am \nAbiral,',
                          textStyle: const TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          duration: Duration(milliseconds: 5000),
                          fadeInEnd: 0.03,
                          fadeOutBegin: 0.9,
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 500),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/capture.PNG'),
                  radius: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
