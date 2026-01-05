/// Pets Gallery Screen
///
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-17
library;

import 'package:flutter/material.dart';

class PetsGalleryScreen extends StatelessWidget {
  final String name;
  const PetsGalleryScreen(this.name, {super.key});

  // This widget is the root of your application.
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
      home: Scaffold(
        appBar: AppBar(title: const Text('My Pet App')),
        body: const Center(),
      ),
    );
  }
}
