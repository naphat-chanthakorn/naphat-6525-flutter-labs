/// Main Profile Card Rating Responsive
///
/// This widget displays a responsive profile card with a rating section.
/// The layout automatically adapts to portrait and landscape orientations.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This file serves as the main entry point of the responsive profile card
/// app. It uses SafeArea to handle device notches and camera cutouts.
/// The current device orientation is detected using
/// MediaQuery.of(context).orientation. If the orientation is portrait,
/// it displayed same as the previous profile card. If the orientation is
/// landscape, a horizontal Row layout is built, placing ContactImage
/// on the left and ContactInfo with Ratings on the right. Expanded widgets
/// are used to provide better visual balance in landscape mode.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-16
library;

import 'package:flutter/material.dart';
import '../components/contact_image.dart';
import '../components/contact_info.dart';
import '../components/ratings.dart';

Widget _buildPortraitLayout() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const [
      ContactImage(imagePath: 'assets/images/sylus.jpg', name: 'Sylus'),
      ContactInfo(
        addressName: 'Hidden base',
        addressInfo: 'Onychinus, Deepspace, N109',
        email: 'abysm.sovereign@loveanddeep.com',
        phone: '478-109-190',
      ),
      Ratings(defaultColor: Colors.black, ratingColor: Colors.yellow),
    ],
  );
}

Widget _buildLandscapeLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        flex: 2,
        child: Center(
          child: const ContactImage(
            imagePath: 'assets/images/sylus.jpg',
            name: 'Sylus',
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 20),
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
    ],
  );
}

void main() {
  runApp(
    MaterialApp(
      title: 'Profile Card',
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
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Builder(
              builder: (context) {
                final orientation = MediaQuery.of(context).orientation;

                if (orientation == Orientation.portrait) {
                  return _buildPortraitLayout();
                } else {
                  return _buildLandscapeLayout();
                }
              },
            ),
          ),
        ),
      ),
    ),
  );
}
