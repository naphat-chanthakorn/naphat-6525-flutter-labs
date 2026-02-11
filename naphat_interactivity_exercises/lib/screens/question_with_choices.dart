/// Question With Choices
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
import '../components/question_choice.dart';
import 'package:naphat_widgets_exercises/utils/responsive.dart';

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
    bool isPortrait = Responsive.isPortrait(context);

    return Padding(
      padding: Responsive.getScreenPadding(context),
      child: Column(
        children: [
          Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(flex: 2, child: Image.asset(imagePath, fit: BoxFit.cover)),

          Expanded(
            flex: 3,
            child: GridView.builder(
              padding: isPortrait
                  ? const EdgeInsets.all(20)
                  : const EdgeInsets.all(40),
              itemCount: choices.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: isPortrait ? 2.5 : 8,
              ),
              itemBuilder: (context, index) {
                return choices[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
