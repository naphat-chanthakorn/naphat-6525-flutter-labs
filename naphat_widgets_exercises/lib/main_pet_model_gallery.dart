/// Pet Model Gallery
///
/// This widget reuses the PetsGalleryScreen from the pet gallery feature.
/// I use Material 3 with a ColorScheme to apply a deep orange theme.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This file contains the main widget that runs the PetsGalleryScreen,
/// which serves as the main pet model gallery screen. It returns
/// a MaterialApp with an AppBarTheme to set the background and
/// foreground colors.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2026-01-05
library;

import 'package:flutter/material.dart';
import 'screens/pets_gallery_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: Colors.deepOrange),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const PetsGalleryScreen(),
    );
  }
}
