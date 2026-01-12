/// Question Choice
///
/// This widget displays a container for each answer choice and
/// automatically determines the appropriate text color based on
/// the selected background color.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The QuestionChoice class is implemented as a StatelessWidget containing
/// name, bgColor, and fgColor. ThemeData.estimateBrightnessForColor(bgColor)
/// is used to calculate the text color automatically when fgColor is not
/// provided. If the background color is dark, white text is used; if the
/// background color is light, black text is used. The widget returns
/// a Container with centered text, background color, padding, and
/// fixed dimensions.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-12
library;

import 'package:flutter/material.dart';

class QuestionChoice extends StatelessWidget {
  final String name;
  final Color bgColor;
  final Color? fgColor;

  const QuestionChoice({
    super.key,
    required this.name,
    required this.bgColor,
    this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color textColor =
        fgColor ??
        (ThemeData.estimateBrightnessForColor(bgColor) == Brightness.dark
            ? Colors.white
            : Colors.black);

    return Container(
      width: 150,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: bgColor),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(name, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
