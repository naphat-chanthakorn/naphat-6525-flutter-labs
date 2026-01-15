/// Main Custom Font
///
/// This widget is display a name using the CustomFont widget inside
/// a container.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// I reused the CustomFont widget to display text with a fontFamily,
/// fontSize, and fontWeight. The Container uses margin to create
/// space outside the box and padding to create space between the text
/// and the border. BoxDecoration is applied to set the background color
/// and rounded corners. The CustomFont widget is centered on the screen.
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
                  fontSize: 28,
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
