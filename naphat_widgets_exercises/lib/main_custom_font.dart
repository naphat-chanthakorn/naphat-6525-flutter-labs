/// Main Custom Font
///
/// This widget is display
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// I used the text in container code from main quote container card and
/// apply CustomFont class for the text.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-17
library;

import 'package:flutter/material.dart';
import 'components/custom_font.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 80),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFont(
                  text: 'นภัทร จันทะกรณ์',
                  fontFamily: 'Kanit',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
