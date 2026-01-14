/// Rating
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
