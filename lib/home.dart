import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_animations/simple_animations.dart';


import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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

        Container(
          // To give navbar background color

          color: Color.fromARGB(255, 2, 1, 1),
          child: Row(
            // Navbar Row
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(
                  'assets/images/title.png',
                  width: 200,
                  height: 100,
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //...
                        Row(
                          children: [
                            Container(
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/images/earth.png',
                                  width: 70,
                                  height: 100,
                                ),
                              ),
                            ),
                            Text(
                              'ENGLISH (EMEA)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 0, 30, 0),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                      width: 200,
                      height: 100,
                      color: Color.fromARGB(255, 246, 193, 0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'PLAY NOW',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                            ),
                          )))
                ],
              )
            ],
          ),
        ),

        Container(
          // Midbar

          height: 50,

          color: Color.fromARGB(255, 46, 46, 46),

          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              'GAME INFO',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
              ),
            ),
            Text(
              'NEWS',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
              ),
            ),
            Text(
              'EVENTS',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
              ),
            ),
            Text(
              'MEDIA',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
              ),
            ),
            Text(
              'COMMUNITY',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
              ),
            ),
            Text(
              'SUPPORT',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
              ),
            ),
          ]),
        ),

        Container(
          width: 1800,
          height: 741,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgd.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 0, 0, 0).withOpacity(1.0),
                  BlendMode.dstATop),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'PUBG: BATTLEGROUNDS',
                  style: GoogleFonts.russoOne(
                    fontSize: 70.0,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'LAND,LOOT,SURVIVE!',
                  style: GoogleFonts.russoOne(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
               Center(
                child: Text(
                  'Play PUBG:BATTLEGROUNDS for free.',
                  style: GoogleFonts.russoOne(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
