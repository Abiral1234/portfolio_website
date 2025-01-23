import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webiste/sections/Footer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/responsive_widget.dart';
import 'product_box.dart';

class MyProducts extends StatefulWidget {
  const MyProducts({Key? key}) : super(key: key);

  @override
  State<MyProducts> createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = (ResponsiveWidget.isSmall(context) ||
        ResponsiveWidget.isXSmall(context));
    bool isMediumScreen = (ResponsiveWidget.isMedium(context));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          automaticallyImplyLeading: false, // Prevents the default back button
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.blue.shade50,
                ], // Define gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          centerTitle: false,
          leading: BackButton(
            onPressed: () {
              context.go('/');
            },
          ),
          title: Text(
            "Products",
            style: GoogleFonts.poppins(
              color: Colors.black, // Adjust color to match the gradient
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor:
              Colors.transparent, // Transparent to show the gradient
          elevation: 0, // Optional: Remove shadow for a cleaner look
        ),
      ),
      bottomNavigationBar: Footer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: isSmallScreen
                ? 10
                : isMediumScreen
                    ? 40
                    : 80),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isSmallScreen
                  ? 1
                  : isMediumScreen
                      ? 2
                      : 3,
              mainAxisExtent: isSmallScreen ? 300 : 400),
          shrinkWrap: true,
          children: [
            ProductBox(
              launchUrl: "https://abiralicious.gumroad.com/l/pfxjne",
              imagePath: "assets/products/shake_and_expand.png",
              productName: "Shake And Expand Flutter Widget",
            ),
            // ProductBox(
            //   launchUrl: "https://abiralicious.gumroad.com/l/pfxjne",
            //   imagePath: "assets/products/shake_and_expand.png",
            //   productName: "Shake And Expand Flutter Widget",
            // ),
            // ProductBox(
            //   launchUrl: "https://abiralicious.gumroad.com/l/pfxjne",
            //   imagePath: "assets/products/shake_and_expand.png",
            //   productName: "Shake And Expand Flutter Widget",
            // ),
            // ProductBox(
            //   launchUrl: "https://abiralicious.gumroad.com/l/pfxjne",
            //   imagePath: "assets/products/shake_and_expand.png",
            //   productName: "Shake And Expand Flutter Widget",
            // ),
          ],
        ),
      ),
    );
  }
}
