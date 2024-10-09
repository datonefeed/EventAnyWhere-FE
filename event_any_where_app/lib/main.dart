import 'package:event_any_where_app/ui/views/auth/login_view.dart';
import 'package:flutter/material.dart'; // Import login_view

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EventAnywhere',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginView(), // Đặt LoginView làm trang đầu tiên
    );
  }
}
