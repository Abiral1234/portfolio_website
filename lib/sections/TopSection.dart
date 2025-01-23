import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_webiste/core/responsive_widget.dart';


class TopSection extends StatefulWidget {
  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> with SingleTickerProviderStateMixin{
   late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;
  @override
  void initState() {
    super.initState();
    
    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    // Define the first color tween
    _colorAnimation1 = ColorTween(
      begin: Colors.blue.shade200,
      end: Colors.blueGrey.shade100,
    ).animate(_controller);

    // Define the second color tween
    _colorAnimation2 = ColorTween(
      begin: Colors.blue.shade200,
      end: Colors.black,
    ).animate(_controller);

    // Start the animation and repeat
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = (ResponsiveWidget.isSmall(context) ||
        ResponsiveWidget.isXSmall(context));
    return Stack(
      children: [
          
          Image.asset('assets/images/mountain.jpg',
           height: 200,
           width: MediaQuery.of(context).size.width,
           fit: BoxFit.fitWidth,
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Lottie.asset (
          //       'images/banner.json',
          //       controller: _controller,
          //       width: MediaQuery.of(context).size.width,
          //       height: 200,
          //       fit: BoxFit.fill,
          //       onLoaded: (composition) {
          //         _controller
          //           ..duration = composition.duration
          //           ..repeat(); // Use .forward() for one-time play or .repeat() for looping
          //       },
          //     ),
          // ),
        Opacity(
          opacity: 0.5,
          child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    _colorAnimation1.value ?? Colors.blue,
                    _colorAnimation2.value ?? Colors.green,
                  ],
                ),
              ),
              
            );
          },
                ),
        ),
    
      
        Container(
         // constraints: BoxConstraints(minHeight: 200, maxHeight: 200 ),
          width: MediaQuery.of(context).size.width,
          
          child: Padding(
            padding: isSmallScreen ? EdgeInsets.fromLTRB(0, 30, 0, 30):EdgeInsets.fromLTRB(100,30,100,30.0),
            child: Container(
              child: Row(
                mainAxisAlignment: isSmallScreen ? MainAxisAlignment.center:MainAxisAlignment.spaceBetween,
                children: [
                  (!isSmallScreen) ?Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          FadeAnimatedText(
                            'Hi \nThere!',
                            textStyle: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                      
                          ),
                          FadeAnimatedText(
                            'I am \nAbiral.',
                            textStyle: const TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                  ):Container(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/capture.PNG'),
                  radius: 80,
                  ),
                  // SizedBox(width: 100,)
                ],
              ),
            ),
          ),
        
        ),
      
      ],
    );
  }
}
