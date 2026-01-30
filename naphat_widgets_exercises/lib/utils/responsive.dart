/// Responsive
///
/// This widget displays
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
/// Date: 2026-01-28
library;

import 'package:flutter/material.dart';

class Responsive {
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static EdgeInsets getScreenPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < 600 ? const EdgeInsets.all(16) : const EdgeInsets.all(8);
  }
}
