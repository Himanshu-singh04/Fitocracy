import 'package:flutter/material.dart';
import 'new_calculator.dart';

// ignore: camel_case_types
class result_page extends StatefulWidget {
  const result_page({super.key});

  @override
  State<result_page> createState() => _result_pageState();
}

// ignore: camel_case_types
class _result_pageState extends State<result_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Center(
        child: Container(
          child: Text("The BMI is "),
        ),
      ),
    );
  }
}
