import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/forgotpassword.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/pages/stash.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/new_calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Registration(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.forgotpassRoute: (context) => Forgotpass(),
        MyRoutes.stashRoute: (context) => Stash(),
        MyRoutes.registrationRoute: (context) => Registration(),
        MyRoutes.new_calculatorRoute: (context) => new_calculator()
      },
    );
  }
}
