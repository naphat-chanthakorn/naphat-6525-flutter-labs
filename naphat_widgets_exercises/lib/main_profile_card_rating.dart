/// Profile Card Rating
///
/// This widget displays a profile card containing a contact image,
/// contact information, and ratings.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This file serves as the main entry point of the profile card app.
/// A MaterialApp is created using Material Design 3 with a seeded color
/// scheme, supporting both light and dark themes via ThemeMode.system.
/// The Scaffold body contains a Container with EdgeInsets.all(20) padding
/// and a deep red background color. Inside, a Column with
/// mainAxisAlignment.spaceAround arranges the ContactImage,
/// ContactInfo, and Ratings widgets according to personal design
/// preference.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-14
library;

import 'package:flutter/material.dart';
import '../components/contact_image.dart';
import '../components/contact_info.dart';
import '../components/ratings.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Profile Card",
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
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Color.fromRGBO(153, 2, 2, 1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContactImage(imagePath: 'assets/images/sylus.jpg', name: 'Sylus'),
              ContactInfo(
                addressName: 'Hidden base',
                addressInfo: 'Onychinus, Deepspace, N109',
                email: 'abysm.sovereign@loveanddeep.com',
                phone: '478-109-190',
              ),
              Ratings(defaultColor: Colors.black, ratingColor: Colors.yellow),
            ],
          ),
        ),
      ),
    ),
  );
}
