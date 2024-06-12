import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubg/home.dart';
import 'package:pubg/pages/video_player_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUBG',
      theme: ThemeData(
        // primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.signika().fontFamily,
        textTheme: GoogleFonts.russoOneTextTheme(),
      ),
          
        
      initialRoute: '/',
      routes: {
        '/': (context) => HomeMain(),
      
      },
    );
  }
    
}
