/// Quote Container Card
///
/// This widget displays a quote image and highlights the author's name
/// using a Container with margin, padding, border, and decoration.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// I used the code from Main Quote Card. I renamed the class to
/// QuoteContainerCard, and then used a Container to wrap the author name
/// text widget. Margin was used to create space outside the container,
/// while padding created space between the text and the border.
/// BoxDecoration was added to adjust the background color, border style,
/// and rounded corners.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-16
library;

import 'package:flutter/material.dart';

void main() => runApp(const QuoteContainerCard());

class QuoteContainerCard extends StatelessWidget {
  const QuoteContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    const String firstName = "Naphat";
    const String lastName = "Chanthakorn";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Favorite Quote',
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 500),
                    child: Image.asset(
                      "assets/images/quote.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 150,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(20),
                  ),
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
                      const SizedBox(width: 20),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
