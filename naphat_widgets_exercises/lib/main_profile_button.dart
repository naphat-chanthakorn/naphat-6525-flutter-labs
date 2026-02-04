/// Main Profile Button
///
/// This widget serves as the entry point of the Profile Button application.
/// It displays a profile with a submit button that showing the dialog.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This widget is used to run the application. The app supports both
/// light and dark themes using Material Design 3. The ProfileWithButton widget
/// is responsible for displays the profile layouts.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-03
library;

import 'package:flutter/material.dart';
import '../components/profile_with_button.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(153, 2, 2, 1.0),
        ),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(153, 2, 2, 1.0),
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(body: SafeArea(child: ProfileWithButton())),
    ),
  );
}
