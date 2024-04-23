import 'package:flutter/material.dart';
import 'package:gozem_clone/features/home/screens/home_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gozem Clone",
      home: HomeScreen(),
    );
  }
}
