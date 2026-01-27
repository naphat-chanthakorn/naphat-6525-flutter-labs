/// Faculty Detail
///
/// This widget is display the Faculty Detail with FacultyModel.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-26
library;

import 'package:flutter/material.dart';
import '../models/faculty_model.dart';

class FacultyDetail extends StatelessWidget {
  final FacultyModel facultyModel;

  const FacultyDetail({super.key, required this.facultyModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(facultyModel.name)),
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              facultyModel.description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            facultyModel.thaiName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 50),
          Expanded(child: Image.asset(facultyModel.imgURL)),
        ],
      ),
    );
  }
}
