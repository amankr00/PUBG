import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pubg/navbar/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMain extends StatelessWidget {
  get style => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        // navbar

        Navbar(),

        Stack(children: [
          Container(
            // width: 1800,
            // height: 900,
            height: MediaQuery.sizeOf(context).height * 0.95,
            width: MediaQuery.sizeOf(context).width * 1.00,

            // decoration: BoxDecoration(
            // border : Border.all(
            // color: const Color.fromARGB(255, 221, 10, 10),
            // width: 20)
            // ),

            child: SvgPicture.asset(
              'assets/images/ima.svg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 235,
              ),
              Container(
                width: 850,
                height: 220,
                child: Text(
                  "INDIA KA BATTLEGROUNDS",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 100,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'mukta',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // width: 70,
                    // height: 100,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/app.png',
                        width: 220,
                        height: 60,
                      ),
                    ),
                  ),
                  Container(
                    // width: 70,
                    // height: 100,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/play.png',
                        width: 220,
                        height: 80,
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Container(),
              //     Container(),
              //   ],
              // ),
              Container()
            ],
          ),
        ]),

        Container(height: 600, color: Color.fromARGB(255, 129, 128, 129)),

        Container(
            width: 1300,
            height: 600,
            color: const Color.fromARGB(255, 171, 30, 30))
      ]),
    ));
  }
}
