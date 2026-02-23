/// Main Profile Card Rating Preferences
///
/// Profile Card Rating Preferences application is displays a profile card
/// with an interactive star rating. The selected rating persists across app
/// restarts using SharedPreferences, and the layout adapts responsively
/// to both portrait and landscape orientations.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// SharedPreferencesWithCache is initialized before runApp(), with the
/// 'savedRating' key specified in the allowList to enable synchronous
/// access to persisted rating data.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-23
library;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/profile_card_rating_responsive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
      allowList: {'savedRating'},
    ),
  );
  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  final SharedPreferencesWithCache prefs;

  const MyApp({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card Rating Preferences',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(153, 2, 2, 1.0),
        ),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(153, 2, 2, 1.0),
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(153, 2, 2, 1.0),
        body: SafeArea(child: ProfileCardRatingResponsive(prefs: prefs)),
      ),
    );
  }
}
