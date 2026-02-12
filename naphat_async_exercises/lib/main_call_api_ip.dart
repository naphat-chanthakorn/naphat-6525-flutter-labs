/// Main Call API IP
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
/// Date: 2026-02-12
library;

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> fetchPublicIP() async {
  try {
    final response = await http.get(
      Uri.parse('https://api.ipify.org?format=json'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['ip'];
    } else {
      throw Exception('Failed to load IP address');
    }
  } catch (e) {
    throw Exception('Failed to connect to the API: $e');
  }
}

void main() {
  fetchPublicIP()
      .then((ip) {
        print('Your public IP address is: $ip');
      })
      .catchError((error) {
        print('Error: $error');
      });
}
