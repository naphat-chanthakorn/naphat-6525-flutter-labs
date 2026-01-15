/// Pet Model
///
/// This file defines the data model used in the Pets Gallery screen.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The PetModel class represents a pet data model containing name, imageUrl,
/// backgroundColor, and textColor. The backgroundColor defaults to pinkAccent,
/// and the textColor defaults to white.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Date: 2026-01-05
library;

import 'package:flutter/material.dart';

class PetModel {
  final String name;
  final String imageUrl;
  final Color backgroundColor;
  final Color textColor;

  const PetModel({
    required this.name,
    required this.imageUrl,
    this.backgroundColor = Colors.pinkAccent,
    this.textColor = Colors.white,
  });
}
