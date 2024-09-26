import 'package:fitness_app/IntroPages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'IntroPages/onBoarding_page.dart';
import 'const_page.dart';

var w;
var h;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: ColorConst.backgroundColor,
          textTheme:GoogleFonts.interTextTheme()
      ),
      home: const IntroPage(),
    );
  }
}
