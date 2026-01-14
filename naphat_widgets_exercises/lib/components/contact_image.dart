/// Contact Image
///
/// This widget displays a
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
/// Date: 2026-01-14
library;

import 'package:flutter/material.dart';

class ContactImage extends StatelessWidget {
  final String imagePath;
  final String name;

  const ContactImage({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 150),
        Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
