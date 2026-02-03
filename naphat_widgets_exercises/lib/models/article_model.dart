/// Article Model
///
/// This class represents a article data model used in
/// the NewsFeedScreen widget.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The Article class defines a article object containing the title,
/// description, date, and reading time. It uses a const constructor
/// with required parameters to create immutable article instances.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-02
library;

class Article {
  final String title;
  final String description;
  final String date;
  final int readingTimeMinutes;

  const Article({
    required this.title,
    required this.description,
    required this.date,
    required this.readingTimeMinutes,
  });
}
