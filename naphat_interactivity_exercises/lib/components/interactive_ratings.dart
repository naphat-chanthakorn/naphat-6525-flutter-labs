/// Interactive Rating
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
/// Date: 2026-02-04
library;

import 'package:flutter/material.dart';

class InteractiveRatings extends StatefulWidget {
  final int totalStars;
  final double starSize;
  final double spacing;
  final Color activeColor;
  final Color inactiveColor;

  const InteractiveRatings({
    super.key,
    this.totalStars = 5,
    this.starSize = 24.0,
    this.spacing = 4.0,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  State<InteractiveRatings> createState() => _InteractiveRatingsState();
}

class _InteractiveRatingsState extends State<InteractiveRatings> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.totalStars, (index) {
        final isActive = index < _rating;

        return GestureDetector(
          onTap: () {
            setState(() {
              _rating = index + 1;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(right: widget.spacing),
            child: Icon(
              isActive ? Icons.star : Icons.star_border,
              size: widget.starSize,
              color: isActive ? widget.activeColor : widget.inactiveColor,
            ),
          ),
        );
      }),
    );
  }
}
