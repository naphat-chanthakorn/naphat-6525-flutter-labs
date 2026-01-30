/// Main Quiz Question Responsive
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
/// Date: 2026-01-28
library;

import 'package:flutter/material.dart';
import '../components/question_choices_responsive.dart';
import '../components/question_choice.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Quiz App by 663040652-5",
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
          child: QuestionWithChoices(
            title: "Where is this picture?",
            imagePath: "assets/images/kku.jpg",
            choices: const [
              QuestionChoice(
                name: "Chiang Mai University",
                bgColor: Colors.purpleAccent,
              ),
              QuestionChoice(
                name: "Khon Kaen University",
                bgColor: Colors.orangeAccent,
              ),
              QuestionChoice(
                name: "Chulalongkorn University",
                bgColor: Colors.pinkAccent,
              ),
              QuestionChoice(
                name: "Mahidol University",
                bgColor: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
