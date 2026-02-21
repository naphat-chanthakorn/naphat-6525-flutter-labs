/// Main Login Shared Pref
///
/// The Main Login Shared Pref application is displays the login page
/// to inform username and password with a SharedPreferencesWithCache
/// for remember user state.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// First initialize SharedPreferencesWithCache
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-18
library;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
      allowList: {'savedUsername', 'savedPassword'},
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
      title: 'Flutter Login with Shared Preferences',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: LoginPage(prefs: prefs),
    );
  }
}

class LoginPage extends StatefulWidget {
  final SharedPreferencesWithCache prefs;
  const LoginPage({super.key, required this.prefs});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _savedUsername = '';
  String _savedPassword = '';

  @override
  void initState() {
    super.initState();
    _savedUsername = widget.prefs.getString('savedUsername') ?? '';
    _savedPassword = widget.prefs.getString('savedPassword') ?? '';
    _usernameController.text = _savedUsername;
    _passwordController.text = _savedPassword;
  }

  Future<void> _saveLogin(String username, String password) async {
    await widget.prefs.setString('savedUsername', username);
    await widget.prefs.setString('savedPassword', password);

    setState(() => _savedUsername = username);
    setState(() => _savedPassword = password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Using Shared Preferences With Cache')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  _saveLogin(
                    _usernameController.text,
                    _passwordController.text,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Saved -> username: ${_usernameController.text}',
                      ),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
