/// Question Choice
///
/// This widget displays
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-10
library;

import 'package:flutter/material.dart';

class QuestionChoice extends StatefulWidget {
  final String name;
  final Color bgColor;
  final Color? fgColor;
  final bool correct;

  const QuestionChoice({
    super.key,
    required this.name,
    required this.bgColor,
    this.fgColor,
    required this.correct,
  });

  @override
  State<QuestionChoice> createState() => _QuestionChoiceState();
}

class _QuestionChoiceState extends State<QuestionChoice> {
  bool _tapped = false;

  void _handleTap(BuildContext context) {
    if (_tapped) return;

    setState(() {
      _tapped = true;
    });

    final bool isCorrect = widget.correct;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(isCorrect ? "Correct!" : "Incorrect"),
        content: Text("Your score is ${isCorrect ? 1 : 0}"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color displayColor = _tapped
        ? (widget.correct ? Colors.green : Colors.red)
        : widget.bgColor;

    final Color textColor =
        widget.fgColor ??
        (ThemeData.estimateBrightnessForColor(displayColor) == Brightness.dark
            ? Colors.white
            : Colors.black);

    return GestureDetector(
      onTap: () => _handleTap(context),
      child: Container(
        width: 150,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: displayColor),
        padding: const EdgeInsets.all(10),
        child: Text(
          widget.name,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
