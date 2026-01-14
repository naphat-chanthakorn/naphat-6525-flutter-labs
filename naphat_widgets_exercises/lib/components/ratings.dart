/// Rating
///
/// This widget displays a row of star icons representing a rating.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The Ratings class is implemented as a StatelessWidget that stores
/// a default color and a rating color. It returns a Row with five
/// Icon widgets. If the index is less than 4, the icon is colored with
/// the rating color; otherwise, it is colored with the default color.
/// mainAxisSize is set to min to keep the row width compact.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-14
library;

import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  final Color defaultColor;
  final Color ratingColor;

  const Ratings({
    super.key,
    required this.defaultColor,
    required this.ratingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < 5; i++)
          Icon(Icons.star, color: i < 4 ? ratingColor : defaultColor),
      ],
    );
  }
}
