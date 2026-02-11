/// Quiz Screen
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
import '../models/question.dart';
import '../components/question_choice_card.dart';
import 'package:naphat_widgets_exercises/utils/responsive.dart';

class QuizScreen extends StatefulWidget {
  final Question question;
  final ValueChanged<bool> onAnswer;
  final VoidCallback onNext;
  final bool showNextButton;

  const QuizScreen({
    super.key,
    required this.question,
    required this.onAnswer,
    required this.onNext,
    required this.showNextButton,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedIndex;
  bool selectionMade = false;

  void _handleChoiceSelected(int index) {
    if (selectionMade) return;

    final isCorrect = widget.question.choices[index].isCorrect;

    setState(() {
      selectedIndex = index;
      selectionMade = true;
    });

    widget.onAnswer(isCorrect);
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait = Responsive.isPortrait(context);

    return Padding(
      padding: Responsive.getScreenPadding(context),
      child: Column(
        children: [
          Text(
            widget.question.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 20),

          Expanded(flex: 2, child: Image.asset(widget.question.imagePath)),

          const SizedBox(height: 20),

          Expanded(
            flex: 3,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: isPortrait ? 2.5 : 8,
              ),
              itemCount: widget.question.choices.length,
              itemBuilder: (context, index) {
                return QuestionChoiceCard(
                  choice: widget.question.choices[index],
                  isSelected: selectedIndex == index,
                  selectionMade: selectionMade,
                  onSelected: () => _handleChoiceSelected(index),
                );
              },
            ),
          ),

          if (selectionMade && widget.showNextButton)
            ElevatedButton(onPressed: widget.onNext, child: const Text('Next')),
        ],
      ),
    );
  }
}
