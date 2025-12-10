// Main Quote Card
// Author Naphat Chanthakorn
// Date 2025-12-10

import 'package:flutter/material.dart';

void main() => runApp(const StudentProfile());

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String firstName = "Naphat";
    const String lastName = "Chanthakorn";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile App',
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

              // Use Expanded widget to make the image and name take the full space vertically
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
