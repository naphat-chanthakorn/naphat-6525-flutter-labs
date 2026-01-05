import 'package:flutter/material.dart';
import '../models/movie_model.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
      appBar: AppBar(
        title: const Text('Movie List'),
        backgroundColor: colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: movies.map((movie) {
          final bool highRated = movie.rating >= 7.0;

          return ListTile(
            leading: Icon(Icons.movie, color: colorScheme.primary),
            title: Text(
              movie.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),
            subtitle: Text(
              '${movie.year} • ${movie.genre}\nDirector: ${movie.director}',
            ),
            trailing: SizedBox(
              width: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: highRated
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
