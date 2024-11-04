import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_care_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansAdlamTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}