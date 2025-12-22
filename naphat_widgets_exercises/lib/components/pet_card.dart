/// Pet Card
///
/// This widget displays each card of the pets using name and imgUrl as
/// parameters. In widget tree has Column then ClipRReact with image above
/// and Container with text below.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// I created a StatelessWidget class named PetCard and defined its
/// properties as final because once a PetCard is built, its data
/// should not change. The widget uses a Column to arrange the image
/// and name vertically. The image is wrapped with ClipRRect and uses
/// BorderRadius.vertical(top: Radius.circular(16)) to round the top corners.
/// Image.network is used to load the image from a URL, with a fixed size
/// of 120x120 pixels and BoxFit.cover. Below the image, a Container is
/// used to display the name. The container has a width of 120 pixels,
/// padding applied using EdgeInsets.all(8), and a BoxDecoration with
/// a pink background. BorderRadius.vertical(bottom: Radius.circular(16))
/// is applied to round the bottom corners. The name is centered and
/// styled with white text, a font size of 20, and a fontWeight of
/// FontWeight.w600.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2025-12-22
library;

import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const PetCard({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: Image.network(
            imageUrl,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),

        Container(
          width: 120,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          alignment: Alignment.center,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
