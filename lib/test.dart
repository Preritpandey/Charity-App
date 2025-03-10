import 'dart:convert';
import 'package:http/http.dart' as http;

void login(String email, String password) async {
  final url = Uri.parse(
      'http://localhost:3001/api/v1/auth/login'); // Use 10.0.2.2 for Android emulator

  try {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['success']) {
        print("Login Successful! Token: ${data['token']}");
      } else {
        print("Login Failed: ${data['message']}");
      }
    } else {
      print("Server Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Login Error: $e");
  }
}

void main(){
  login("pandeyprerit45@gmail.com", "SecurePass123");
}