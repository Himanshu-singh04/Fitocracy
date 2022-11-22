import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/forgotpassword.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
          ),
        darkTheme: ThemeData(
        brightness: Brightness.dark
        ),
        debugShowCheckedModeBanner: false,
        initialRoute:"/",
routes: {
  "/" :(context) => LoginPage(),
MyRoutes.homeRoute:(context) => HomePage(),
  MyRoutes.loginRoute :(context) => LoginPage(),
    MyRoutes.forgotpassRoute :(context) => Forgotpass(),
},
        );
  }
}
