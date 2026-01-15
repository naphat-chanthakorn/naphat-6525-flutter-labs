/// Main Contact List
///
/// This widget serves as the entry point of the Contact List application.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This file defines the main app that run ContactListScreen. It returns
/// a MaterialApp with titled "My Contacts'. The app enables Material Design
/// 3 and supports both Light and Dark themes. In home widget
/// the ContactListScreen is used.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-07
library;

import 'package:flutter/material.dart';
import '../screens/contact_list_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My Contacts',
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
      home: ContactListScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
