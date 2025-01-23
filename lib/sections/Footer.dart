import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/responsive_widget.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = (ResponsiveWidget.isSmall(context) ||
        ResponsiveWidget.isXSmall(context));
    return Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: isSmallScreen
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Copyright ©, Abiral Pokhrel 2022',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        context.go('/products');
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          'Buy Products',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        direction: Axis.horizontal,
                        spacing: 30.0,
                        children: [
                          IconButton(
                              onPressed: () async {
                                launch("https://t.me/Abiral1234");
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.telegram,
                                color: Color(0xff0088CC),
                                size: 30,
                              )),
                          IconButton(
                            onPressed: () async {
                              launch(
                                  "https://www.linkedin.com/in/abiral-pokhrel-a3088b212/");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Color(0xff0072b1),
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              launch(
                                  "https://www.instagram.com/abiral_pokhrel/");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xffbc2a8d),
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              launch("https://soundcloud.com/abiral-681636707");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.soundcloud,
                              color: Colors.orange,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Text(
                          'Copyright ©, Abiral Pokhrel 2022',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            context.go('/products');
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              'Buy Products',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                    child: Container(
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        direction: Axis.horizontal,
                        spacing: 30.0,
                        children: [
                          IconButton(
                              onPressed: () async {
                                launch("https://t.me/Abiral1234");
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.telegram,
                                color: Color(0xff0088CC),
                                size: 30,
                              )),
                          IconButton(
                            onPressed: () async {
                              launch(
                                  "https://www.linkedin.com/in/abiral-pokhrel-a3088b212/");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Color(0xff0072b1),
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              launch(
                                  "https://www.instagram.com/abiral_pokhrel/");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xffbc2a8d),
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              launch("https://soundcloud.com/abiral-681636707");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.soundcloud,
                              color: Colors.orange,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
  }
}
