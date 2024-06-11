import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeMain extends StatelessWidget {
  get style => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Column(children: [
      // navbar

      Container(
        // To give navbar background color

        color: Color.fromARGB(255, 2, 1, 1),
        child: Row(
          // Navbar Row
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                width: 200,
                                height: 100,
                              ),
                            ),
                          ),
                          Text(
                            'ENGLISH',
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
              ],
            )
          ],
        ),
      )
    ]));
  }
}
