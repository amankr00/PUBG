import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';



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
                  width: 235,
                  height: 106,
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
                                fontSize: 15,
                                decoration: TextDecoration.none
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
                        fontSize: 15,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Container(
                      width: 275,
                      height: 100,
                      color: Color.fromARGB(255, 246, 193, 0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'PLAY NOW',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 25,
                              decoration: TextDecoration.none
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
                decoration: TextDecoration.none
              ),
            ),
            Text(
              'NEWS',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
                decoration: TextDecoration.none
              ),
            ),
            Text(
              'EVENTS',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
                decoration: TextDecoration.none
              ),
            ),
            Text(
              'MEDIA',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
                decoration: TextDecoration.none
              ),
            ),
            Text(
              'COMMUNITY',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
                decoration: TextDecoration.none
              ),
            ),
            Text(
              'SUPPORT',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 17,
                decoration: TextDecoration.none
              ),
            ),
          ]),
        ),

        Container(
          width: 1800,
          height: 900,
          decoration: BoxDecoration(
          // color: Color.fromARGB(255, 255, 255, 255)
          //                     .withOpacity(1.0),
            image: DecorationImage(
              image: AssetImage("assets/images/backgd.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
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
                    decoration: TextDecoration.none,
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
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Play PUBG:BATTLEGROUNDS for free.',
                  
                  style: GoogleFonts.russoOne(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Container(
                width: 950,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255)
                      .withOpacity(0.01),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 246, 246)
                              .withOpacity(0.001),
                          border: Border.all(
                            color: const Color.fromARGB(255, 251, 251, 251), //                   <--- border color
                            width: 1.5,
                          ),
                        ),

                        child : Padding(
                    padding: EdgeInsetsDirectional.all(10),
                        child : Row(  // Image , Text
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children : [
                         Container(
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/images/steam.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),

                            Text('Steam',
                            style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color : Colors.white),),
                            ]
                        


                        ),
                        ),
                      ),
                      
                      Container(
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 246, 246)
                              .withOpacity(0.001),
                          border: Border.all(
                            color: const Color.fromARGB(255, 251, 251, 251), //                   <--- border color
                            width: 1.5,
                          ),
                        ),

                        child : Padding(
                    padding: EdgeInsetsDirectional.all(10),
                        child : Row(  // Image , Text
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children : [
                         Container(
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/images/epic.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),

                            Text('Epic Games',
                            style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color:Colors.white),),
                            ]
                        


                        ),
                        ),
                      ),
                      
                      Container(
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 246, 246)
                              .withOpacity(0.001),
                          border: Border.all(
                            color: const Color.fromARGB(255, 251, 251, 251), //                   <--- border color
                            width: 1.5,
                          ),
                        ),

                        child : Padding(
                    padding: EdgeInsetsDirectional.all(10),
                        child : Row(  // Image , Text
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children : [
                         Container(
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/images/playstation.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),

                            Text('PlayStation',
                            style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color : Colors.white)),
                            ]
                        


                        ),
                        ),
                      ),
                      
                      Container(
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 246, 246)
                              .withOpacity(0.001),
                          border: Border.all(
                            color: const Color.fromARGB(255, 251, 251, 251), //                   <--- border color
                            width: 1.5,
                          ),
                        ),

                        child : Padding(
                    padding: EdgeInsetsDirectional.all(10),
                        child : Row(  // Image , Text
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children : [
                         Container(
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/images/xbox.png',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),

                            Text('Xbox',
                            style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color : Colors.white),),
                            ]
                        


                        ),
                        ),
                      ),
                      
                      
                    ]),
              ),
            ],
          ),
        ),
        
        Container(


        
        height: 600,
        color: Color.fromARGB(255, 13, 194, 46)),

        Container(
        width: 1300,
        height: 600,
        color: const Color.fromARGB(255, 171, 30, 30))
      ]),
    ));
  }
}
