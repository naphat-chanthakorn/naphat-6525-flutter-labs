/// Custom Font
///
/// This widget is a StatelessWidget named CustomFont used to display
/// text with customizable fontFamily, fontSize, and fontWeight.
///
/// ============================================
/// AI DOCUMENTATION
/// Tool: ChatGPT (GPT-5.2)
/// Prompt: Create a Flutter widget that displays text with a fontFamily,
/// fontSize, and fontWeight.
/// ============================================
///
/// EXPLANATION (in my own words):
/// This CustomFont widget accepts one required parameter, text,
/// and optional styling parameters with default values. It uses a const
/// constructor with super.key. Return a Text widget with the provided
/// text and style settings, the text is centered and styled using
/// the provided font settings.
///
/// VERIFICATION:
/// Try it out on the main custom font to see if it works.
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
