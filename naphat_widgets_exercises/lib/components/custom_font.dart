/// Custom Font
///
/// This widget is
///
/// ============================================
/// AI DOCUMENTATION
/// Tool: ChatGPT (GPT-5.2)
/// Prompt:
/// ============================================
///
/// EXPLANATION (in my own words):
///
/// VERIFICATION:
///
/// MODIFICATIONS:
/// Used as generated - tested with Flutter emulator and hot reload.
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-17
library;

import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  const CustomFont({
    super.key,
    required this.text,
    this.fontFamily,
    this.fontSize = 24.0,
    this.fontWeight = FontWeight.normal,
  });

  final String text;
  final String? fontFamily;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.deepOrange,
      ),
    );
  }
}
