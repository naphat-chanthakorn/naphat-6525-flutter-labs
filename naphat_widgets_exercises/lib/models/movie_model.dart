/// Movie Model
///
/// This class represents a movie data model used in the MovieList widget.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The Movie class defines a movie object containing the title, release year,
/// genre, director, and rating. It uses a const constructor with required
/// parameters to create immutable movie instances.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-07
library;

class Movie {
  final String title;
  final int year;
  final String genre;
  final String director;
  final double rating;

  const Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.director,
    required this.rating,
  });
}
