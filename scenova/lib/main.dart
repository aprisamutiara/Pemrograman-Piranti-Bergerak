import 'package:flutter/material.dart';
import 'package:scenova/layouts/landing.dart';

void main() {
  runApp(const MainApp());
} 

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLanding(),
      ),
    );
  }
}

