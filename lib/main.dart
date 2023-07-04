import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_responsive_ui/constants.dart';
import 'package:real_estate_responsive_ui/widgets/main/main_section.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor:  kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor:  Colors.white)
          .copyWith(bodyText1: TextStyle(color: kBodyTextColor),
                    bodyText2: TextStyle(color: kBodyTextColor))
      ),
      home: MainSection(),
    );
  }
}

