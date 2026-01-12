/// Question With Choices
///
/// This widget displays the layout of question tile, image, and choices.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The QuestionWithChoices class is implemented as a StatelessWidget
/// containing the question title, image, and choices. The build method
/// arranges the layout into three sections:
/// - The title at the top, styled with the theme's headlineSmall
///   and primary color.
/// - The image in the middle, using BoxFit.contain to preserve aspect ratio.
/// - Four choices at the bottom, arranged in a 2x2 grid using Rows and Column.
///   MainAxisAlignment.spaceEvenly is used to distribute space between choices
///   in each row, and a SizedBox is used to separate the first and second rows.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-12
library;

import 'package:flutter/material.dart';
import 'question_choice.dart';

class QuestionWithChoices extends StatelessWidget {
  final String title;
  final String imagePath;
  final List<QuestionChoice> choices;

  const QuestionWithChoices({
    super.key,
    required this.title,
    required this.imagePath,
    required this.choices,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),

        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [choices[0], choices[1]],
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [choices[2], choices[3]],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
