/// Main Movies
///
/// This widget displays a list of movies using a ListView. Each ListTile
/// shows the movie title, year, genre, director, and rating. When a movie
/// is tapped, a SnackBar appears showing feedback based on the rating.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The MovieList widget is implemented as a StatefulWidget with its state
/// in _MovieListState, where a list of Movie objects is defined.
/// It returns a Scaffold with an AppBar titled "Movie List".
///
/// The body contains a ListView that generates a ListTile for each movie.
/// Each ListTile displays:
/// - A movie icon using the primary color
/// - The movie title in bold with the primary color
/// - Year, genre, and director in the secondary color
/// - A star icon and numeric rating at the trailing side
/// If the rating is greater than or equal to 7.0, the star icon is colored
/// with colorScheme.primary. Otherwise, it uses colorScheme.onSurfaceVariant.
///
/// When a ListTile is tapped, a SnackBar is shown with feedback:
/// - Rating > 8.0 the massage shown "This is a highly rated movie!"
/// - Rating between 6.0 and 8.0 massage shown "This is a good movie"
/// - Rating < 6.0 massage shown "This movie might need improvement"
///
/// The app enables Material Design 3 and supports both Light and Dark themes.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-07
library;

import 'package:flutter/material.dart';
import '../models/movie_model.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: const MovieList(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final List<Movie> movies = const [
    Movie(
      title: "The Shawshank Redemption",
      year: 1994,
      genre: "Drama",
      director: "Frank Darabont",
      rating: 9.3,
    ),
    Movie(
      title: "Inception",
      year: 2010,
      genre: "Sci-Fi",
      director: "Christopher Nolan",
      rating: 7.8,
    ),
    Movie(
      title: "Disaster Movie",
      year: 2008,
      genre: "Comedy",
      director: "Jason Friedberg",
      rating: 1.9,
    ),
  ];

  void _handleMovieTap(BuildContext context, Movie movie) {
    String message;

    if (movie.rating > 8.0) {
      message = 'This is a highly rated movie!';
    } else if (movie.rating >= 6.0) {
      message = 'This is a good movie';
    } else {
      message = 'This movie might need improvement';
    }

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Movie List')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: movies.map((movie) {
          return ListTile(
            leading: Icon(
              Icons.movie,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              movie.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            subtitle: Text(
              '${movie.year} • ${movie.genre}\nDirector: ${movie.director}',
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            trailing: SizedBox(
              width: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: movie.rating >= 7.0
                        ? colorScheme.primary
                        : colorScheme.onSurfaceVariant,
                  ),
                  SizedBox(width: 4),
                  Text(movie.rating.toString(), style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            onTap: () => _handleMovieTap(context, movie),
          );
        }).toList(),
      ),
    );
  }
}
