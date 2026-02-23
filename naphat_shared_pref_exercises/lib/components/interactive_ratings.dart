/// Interactive Rating
///
/// InteractiveRatings is a StatefulWidget responsible for displaying an
/// interactive star rating component. Users can tap a star to update the
/// current rating, and the UI updates immediately to reflect the selection.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// This widget manages the rating state locally while coordinating persistence
/// with SharedPreferencesWithCache, ensuring the selected rating is restored
/// when the app is restarted.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-23
library;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InteractiveRatings extends StatefulWidget {
  final SharedPreferencesWithCache prefs;
  final int totalStars;
  final double starSize;
  final double spacing;
  final Color activeColor;
  final Color inactiveColor;

  const InteractiveRatings({
    super.key,
    required this.prefs,
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
  static const String _ratingKey = 'savedRating';
  int _rating = 0;

  @override
  void initState() {
    super.initState();
    _rating = widget.prefs.getInt(_ratingKey) ?? 0;
  }

  void _updateRating(int value) {
    setState(() {
      _rating = value;
    });
    widget.prefs.setInt(_ratingKey, value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.totalStars, (index) {
        final isActive = index < _rating;

        return GestureDetector(
          onTap: () => _updateRating(index + 1),
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
