/// Main Quiz Check Answer
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
import '../screens/question_with_choices.dart';
import '../components/question_choice.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Quiz App by 663040652-5")),
        ),
        body: SafeArea(
          child: Builder(
            builder: (context) {
              return QuestionWithChoices(
                title: "Where is this picture?",
                imagePath: "assets/images/kku.jpg",
                choices: [
                  QuestionChoice(
                    name: "Chiang Mai University",
                    bgColor: Theme.of(context).colorScheme.secondary,
                    fgColor: Theme.of(context).colorScheme.onSecondary,
                    correct: false,
                  ),
                  QuestionChoice(
                    name: "Khon Kaen University",
                    bgColor: Theme.of(context).colorScheme.secondary,
                    fgColor: Theme.of(context).colorScheme.onSecondary,
                    correct: true,
                  ),
                  QuestionChoice(
                    name: "Chulalongkorn University",
                    bgColor: Theme.of(context).colorScheme.secondary,
                    fgColor: Theme.of(context).colorScheme.onSecondary,
                    correct: false,
                  ),
                  QuestionChoice(
                    name: "Mahidol University",
                    bgColor: Theme.of(context).colorScheme.secondary,
                    fgColor: Theme.of(context).colorScheme.onSecondary,
                    correct: false,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
  );
}
