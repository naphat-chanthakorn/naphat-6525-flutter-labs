/// Interactive Rating
///
/// The ProfileCardRatingResponsive widget is responsible for displaying
/// an interactive profile card layout that adapts to different screen
/// orientations. Compared to the previous profile card implementation,
/// this version integrates the InteractiveRatings widget to allow users
/// to adjust the rating.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The ProfileCardRatingResponsive widget reuses the ContactImage,
/// ContactInfo, and Responsive utilities from the widgets_exercises
/// package. It adapts the layout based on the current device orientation
/// by using Responsive.isPortrait(context) to build separate layouts for
/// portrait and landscape modes. Semantic colors from the theme are passed
/// to the InteractiveRatings widget, using colorScheme.primary for
/// activeColor and colorScheme.outlineVariant for inactiveColor.
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
