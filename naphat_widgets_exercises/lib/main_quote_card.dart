/// Quote Card
///
/// This widget displays a quote image and the author's name
///
/// ============================================
/// AI DOCUMENTATION
/// Tool: ChatGPT (GPT-5.2)
/// Prompt: Create a Flutter screen that displays a quote image and
/// the author's name.
/// ============================================
///
/// EXPLANATION (in my own words):
/// This is the QuoteCard widget, which serves as the main screen.
/// I set firstName and lastName as constants. Material 3 is enabled
/// to apply a ColorScheme using a seed color. A Scaffold is used to
/// provide the basic app structure, including an AppBar.
/// Padding is added to create space around the entire content.
/// Inside the Column, Expanded widgets are used so the image and
/// the name section share vertical space. The image is constrained
/// to a maximum height of 500 pixels while maintaining its aspect ratio
/// using Image.asset and BoxFit.contain. A Row is used to display
/// the first name and last name horizontally, with SizedBox providing
/// spacing between them. The text color is set to Deep Orange
/// instead of black.
///
/// VERIFICATION:
/// The screen was tested by running the app on an emulator, Pixel 8.
/// Verified that all images load correctly from their URLs, and no overflow
/// or alignment issues occur.
///
/// MODIFICATIONS:
/// Used as generated - tested with Flutter emulator and hot reload.
///
/// Author Naphat Chanthakorn
/// Date 2025-12-10
library;

import 'package:flutter/material.dart';

void main() => runApp(const QuoteCard());

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String firstName = "Naphat";
    const String lastName = "Chanthakorn";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: Colors.deepOrange),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('My Favorite Quote')),
        body: Padding(
          padding: const EdgeInsets.all(
            20.0,
          ), // Add space around the entire content
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ), // Maximum height of 500 pixels
                    child: Image.asset(
                      "assets/images/quote.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              // Use Expanded widget to make the image and name take
              // the full space vertically
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      firstName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(width: 20), // Add spacing using SizedBox
                    Text(
                      lastName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
