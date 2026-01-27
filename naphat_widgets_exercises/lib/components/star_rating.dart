/// Star Rating
///
/// This widget is
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
/// Date: 2026-01-27
library;

import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double size;

  const StarRating({super.key, required this.rating, this.size = 15});

  @override
  Widget build(BuildContext context) {
    final int fullStars = rating.floor();
    final bool hasHalfStar = (rating - fullStars) >= 0.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return Icon(Icons.star, size: size, color: Colors.amber);
        } else if (index == fullStars && hasHalfStar) {
          return Icon(Icons.star_half, size: size, color: Colors.amber);
        } else {
          return Icon(Icons.star_border, size: size, color: Colors.amber);
        }
      }),
    );
  }
}
