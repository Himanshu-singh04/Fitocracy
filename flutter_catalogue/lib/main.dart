// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalogue/home_page.dart';
import 'package:flutter_catalogue/login_page.dart';
 import 'package:flutter_catalogue/login_page.dart';

void main()
{
  runApp(const Fitocracy());

}

class  Fitocracy extends StatelessWidget {
  const  Fitocracy({super.key});

  @override
  Widget build(BuildContext context) {
    
    return   MaterialApp(
      
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
          )
          )               
        ),
      darkTheme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
      home: Homepage() ,
    initialRoute: "/",
      routes:  {
        // "/":(context) => Loginpage(),
        // "/home":(context) => Homepage(),
        // "/login":(context) => Loginpage(),
      
      },
    ); 
    
  
    // return materialApp;

    
  }
}

