/// Question
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

import 'choice.dart';

class Question {
  final String title;
  final String imagePath;
  final List<Choice> choices;

  const Question({
    required this.title,
    required this.imagePath,
    required this.choices,
  });
}
