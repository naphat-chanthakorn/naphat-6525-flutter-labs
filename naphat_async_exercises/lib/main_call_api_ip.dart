/// Main Call API IP
///
/// The fetchPublicIP function retrieves the public IP address from a API
/// and returns it as a String. The formatted output is displayed in the main
/// function.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The fetchPublicIP function is asynchronous and uses the async/await
/// to perform an HTTP GET request. The await pauses execution until
/// the API response is received. The JSON response is decoded using the
/// dart:convert library, converting the JSON string into a Dart Map,
/// from which the IP address is extracted. Errors are handled using try-catch
/// and exceptions. The function returns a Future<String>, allowing the caller
/// to handle the result or error using then() and catchError().
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
