/// Student Profile
///
/// This widget displays a name and student ID, and the Text must be
/// separate Text with bolded, 24 pixels font size, centered horizontally
/// and vertically.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// In this exercise, I create the class named StudentProfile.
/// The student name and ID as constants. I use a Column to arrange
/// the text vertically and apply MainAxisAlignment.center to keep
/// the content centered. Spacing between name and ID is handled
/// with SizedBox. I set the theme for the favorite color and AppBar with
/// title 'Student Profile'.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2025-12-08
library;

import 'package:flutter/material.dart';

void main() => runApp(const StudentProfile());

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String name = "Naphat Chanthakorn";
    const String id = "663040652-5";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: Colors.deepOrange),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Profile')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                id,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
