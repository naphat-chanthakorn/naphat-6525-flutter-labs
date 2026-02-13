/// User
///
/// The User model
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
/// Date: 2026-02-12
library;

class User {
  final int id;
  final String name;
  final String company;
  final String username;
  final String email;

  const User({
    required this.id,
    required this.name,
    required this.company,
    required this.username,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      company: json['company']['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
    );
  }
}
