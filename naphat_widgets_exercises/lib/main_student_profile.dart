// Student Profile
// Author Naphat Chanthakorn
// Date 2025-12-08

import 'package:flutter/material.dart';

void main() => runApp(const StudentProfile());

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String name = "Naphat Chanthakorn";
    const String id = "663040652-5";

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
        appBar: AppBar(title: const Text('Student Profile')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                id,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
