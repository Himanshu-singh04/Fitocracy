import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
class Stash extends StatelessWidget {
  const Stash({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 186, 217, 194),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          children: [
           Image.asset(
               "assets/images/fitocracy.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 30,
            ),
            Text("Hey Fitness Enthusiast!!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            SizedBox(
              height: 20,
            ),
             Image.asset(
               "assets/images/fitness.png",
              fit: BoxFit.contain,
              color: Color.fromARGB(255, 186, 217, 194),
              colorBlendMode: BlendMode.darken,
            ),
            SizedBox(
              height: 20,
            ),
             ElevatedButton(
          child: Text(
          "Get Started                         >>",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20),
              ),
               onPressed:  () {
                    Navigator.pushNamed(context, MyRoutes.registrationRoute);
                  },
         style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
         shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(13))
        ),
     ),
        
  ],
      )
      )
    );
  }
}