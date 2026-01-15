/// Pet Card With Model
///
/// This widget is reused in Pets Gallery Screen for display a pet image
/// and its name.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The PetCardWithModel widget accepts a PetModel parameter.
/// It uses a Column to arrange the pet image and name vertically.
/// The image is wrapped in ClipRRect with rounded top corners.
/// Image.network loads the image from the provided URL. Below the image,
/// a Container displays the pet name. The container has a fixed width
/// of 120 pixels, vertical padding of 8 pixels, and a background color
/// from pet.backgroundColor. The bottom corners are rounded. The name text
/// is centered and styled using pet.textColor, font size, and FontWeight.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2026-01-05
library;

import 'package:flutter/material.dart';
import '../models/pet_model.dart';

class PetCardWithModel extends StatelessWidget {
  final PetModel pet;

  const PetCardWithModel({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            pet.imageUrl,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),

        Container(
          width: 120,
          padding: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: pet.backgroundColor,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
          ),
          child: Text(
            pet.name,
            style: TextStyle(
              color: pet.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
