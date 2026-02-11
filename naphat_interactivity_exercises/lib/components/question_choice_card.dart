/// Question Choice Card
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
/// Date: 2026-02-11
library;

import 'package:flutter/material.dart';
import '../models/choice.dart';

class QuestionChoiceCard extends StatefulWidget {
  final Choice choice;
  final bool isSelected;
  final bool selectionMade;
  final VoidCallback onSelected;

  const QuestionChoiceCard({
    super.key,
    required this.choice,
    required this.isSelected,
    required this.selectionMade,
    required this.onSelected,
  });

  @override
  State<QuestionChoiceCard> createState() => _QuestionChoiceCardState();
}

class _QuestionChoiceCardState extends State<QuestionChoiceCard> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = widget.choice.displayColor;

    if (widget.isSelected) {
      bgColor = widget.choice.isCorrect ? Colors.green : Colors.red;
    }

    return GestureDetector(
      onTap: widget.selectionMade ? null : widget.onSelected,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: bgColor),
        child: Text(
          widget.choice.name,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
