/// Main Interactivity Profile
///
/// This widget serves as the entry point of the Interactivity Profile.
/// It displays a profile card with the interactive star ratings.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This widget is used to run the application. The app supports both
/// light and dark themes using Material Design 3. A SafeArea is applied to
/// avoid notches and camera cutouts. The ProfileCardRatingResponsive widget
/// is responsible for display the profile card with interactive star ratings.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-04
library;

import 'package:flutter/material.dart';
import '../screens/profile_card_rating_responsive.dart';

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
      home: Scaffold(
        backgroundColor: Color.fromRGBO(153, 2, 2, 1.0),
        body: SafeArea(child: const ProfileCardRatingResponsive()),
      ),
    ),
  );
}
