import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 186, 217, 194),
        child: Column(
          children: [
            SizedBox(height: 35),
            Image.asset(
              "assets/welcome.png",
              fit: BoxFit.contain,
              color: Color.fromARGB(255, 186, 217, 194),
              colorBlendMode: BlendMode.colorBurn,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Text("Welcome onboard!!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Enter your Fullname",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Enter your Email Id",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Enter password",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Confirm password",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Register",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onPressed: () {
                      return null;
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 248, 165, 40),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        fixedSize: Size(200, 50)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  ElevatedButton(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 186, 217, 194),
                      elevation: 0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
