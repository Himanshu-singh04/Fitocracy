import 'package:flutter/material.dart';
import 'BMI_Calculator.dart';

void main() {
  runApp(const Home_screen());
}

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BMI_Calculator(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(backgroundColor: Colors.blue.shade50));
  }
}
