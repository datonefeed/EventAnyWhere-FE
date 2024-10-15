import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

class AuthViewModel {
  static Future<String> login(String email, String password) async {
    final url = Uri.parse(
        'http://10.0.2.2:3000/accounts/login'); // Thay YOUR_BACKEND_URL bằng URL thực tế của backend
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Nếu thành công, có thể trả về token hoặc thông tin người dùng
      return 'Login successful!';
    } else {
      // Nếu có lỗi, trả về thông báo lỗi
      return 'Login failed: ${response.body}';
    }
  }
}
