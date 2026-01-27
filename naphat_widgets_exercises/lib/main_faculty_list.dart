/// Main Faculty List
///
/// This widget is display the Faculty List.
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
import '../screens/faculty_detail.dart';
import '../models/faculty_model.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({super.key});

  @override
  State<FacultyList> createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  static List<String> facultyNames = [
    'Engineering',
    'Medicine',
    'Architecture',
  ];
  static List<String> facultyThaiNames = [
    'วิศวกรรมศาสตร์',
    'แพทยศาสตร์',
    'สถาปัตยกรรม',
  ];
  static List<String> facultyDescriptions = [
    'https://www.en.kku.ac.th/web/',
    'https://md.kku.ac.th',
    'https://apds.kku.ac.th',
  ];
  static List facultyImgURLs = [
    'assets/images/engineering.jpg',
    'assets/images/medicine.jpg',
    'assets/images/architecture.jpg',
  ];

  final List<FacultyModel> facultyData = List.generate(
    facultyNames.length,
    (index) => FacultyModel(
      facultyNames[index],
      facultyThaiNames[index],
      '${facultyImgURLs[index]}',
      facultyDescriptions[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('KKU Faculties 663040652-5'))),
      body: ListView.builder(
        itemCount: facultyData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(facultyData[index].name),
              leading: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        FacultyDetail(facultyModel: facultyData[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: const FacultyList(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
