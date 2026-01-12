/// Quiz Question
///
/// This widget displays a quiz question about a place with four choices.
/// It supports both light and dark themes using Material Design 3.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This file sets up the main application using MaterialApp with Material 3.
/// A ColorScheme is generated from a seed color with orange color for
/// consistent theming. Light and dark themes are configured and applied
/// automatically using ThemeMode.system. The home screen contains a Scaffold
/// with an AppBar and a QuestionWithChoices widget, which displays
/// the question title, an image, and four choices.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-12
library;

import 'package:flutter/material.dart';
import '../components/question_choice.dart';
import '../components/question_with_choices.dart';

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
        body: QuestionWithChoices(
          title: "Where is this place?",
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
  );
}
