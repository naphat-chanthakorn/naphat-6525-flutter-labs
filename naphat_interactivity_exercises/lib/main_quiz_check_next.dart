/// Main Quiz Check Next
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
import 'models/question.dart';
import 'models/choice.dart';
import 'screens/quiz_screen.dart';

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
      home: const QuizApp(),
    ),
  );
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int currentQuestionIndex = 0;
  int score = 0;
  bool questionAnswered = false;
  int _resetCounter = 0;

  late final List<Question> questions = [
    Question(
      title: 'Where is this place?',
      imagePath: 'assets/images/yunshao.jpg',
      choices: [
        Choice(
          name: 'N109 Zone',
          isCorrect: false,
          displayColor: Colors.purple,
        ),
        Choice(name: 'Yunshao', isCorrect: true, displayColor: Colors.orange),
        Choice(
          name: 'Akso Hospital',
          isCorrect: false,
          displayColor: Colors.pink,
        ),
        Choice(name: 'Lemuria', isCorrect: false, displayColor: Colors.blue),
      ],
    ),
    Question(
      title: 'Who is that man?',
      imagePath: 'assets/images/zayne.jpg',
      choices: [
        Choice(name: 'Sylus', isCorrect: false, displayColor: Colors.purple),
        Choice(name: 'Caleb', isCorrect: false, displayColor: Colors.orange),
        Choice(name: 'Xavier', isCorrect: false, displayColor: Colors.pink),
        Choice(name: 'Zayne', isCorrect: true, displayColor: Colors.blue),
      ],
    ),
  ];

  void _handleAnswer(bool isCorrect) {
    if (questionAnswered) return;

    setState(() {
      if (isCorrect) score++;
      questionAnswered = true;
    });
  }

  void _handleNext() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        questionAnswered = false;
      });
    } else {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Quiz Complete!'),
        content: Text('Your score: $score / ${questions.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
                questionAnswered = false;
                _resetCounter++;
              });
            },
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Quiz App by 663040652-5',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: QuizScreen(
        key: ValueKey('${currentQuestionIndex}_$_resetCounter'),
        question: questions[currentQuestionIndex],
        onAnswer: _handleAnswer,
        onNext: _handleNext,
        showNextButton: questionAnswered,
      ),
    );
  }
}
