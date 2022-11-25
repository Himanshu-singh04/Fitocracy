// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  // const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    // return Material(
      // appBar: AppBar(
        

      //   title: Center(
      //     child: const Text("Fitocracy")),
      // ),
      
      // body:  Center(
      //      child
      //     child: Container
        
      //   ( width: 200,
      //    height: 200,
      //     child: Image.asset("assets/images/surfboard.png"))),
          
      //      SizedBox(
      //     height: 20 ),
      //   Text("Welcome to Fitocracy", style: TextStyle
      //   (
      //     fontSize: 20,fontWeight: FontWeight.bold,
      //   ),
      //   ),
      //   SizedBox(
      //     height: 20,
      //   ),
      //   TextFormField(
      //     decoration: InputDecoration(
      //       hintText: "Enter the username",
      //       labelText: "Username",
      //     ),
          
      //   ),
      //       SizedBox(
      //          height: 20,
      //         ),
      //   TextFormField(
      //     decoration: InputDecoration(
      //       hintText: "Enter the password",
      //       labelText: "Password",
      //     ),
          
      //   ),
      
           
      
      

return Material(
      
      child: Column
      (
        children: 
      [
        Center(
          child: Container(
            width:200 ,
            height:200 ,
            child: Image.asset("assets/images/surfboard.png", fit: BoxFit.cover,)),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20,
        ),
        Text("Welcome to Fitocracy", style: TextStyle
        (
          fontSize: 20,fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter the username",
            labelText: "Username",
          ),
          
        ),
            SizedBox(
               height: 20,
              ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter the password",
            labelText: "Password",
          ),
          
        ),
      ],
      
      
      ),
      
      // // ignore: prefer_const_constructors
      // child: Center(
      //   child: const Text("login page", style:TextStyle(
      //     fontSize:20,
      //     fontWeight:FontWeight.bold,
      //     color: Colors.blue

        ); 
        
  }
}