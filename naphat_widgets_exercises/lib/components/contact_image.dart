/// Contact Image
///
/// This widget displays a profile image with a name label overlaid
/// on the image.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This StatelessWidget is named ContactImage and is used in the
/// profile card. It takes two parameters: imagePath and name. The widget
/// builds a Stack containing a Container decorated with a background image
/// using DecorationImage and AssetImage. A Positioned widget is used to
/// place the name label at the bottom of the image. The name text is
/// styled in white.
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
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 180,
          child: Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
