/// Pet Gallery
///
/// This widget is the main of pet gallery to use run My Pet App
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The app starts by calling runApp. MaterialApp is used to provide
/// Material Design styling and navigation. I set the title as 'My Pet App'
/// and remove the debug banner. The PetsScreen widget is imported from
/// the screens directory.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-22
library;

import 'package:flutter/material.dart';
import 'screens/pets_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My Pet App',
      debugShowCheckedModeBanner: false,
      home: PetsScreen(),
    ),
  );
}
