import 'dart:async';

import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter/material.dart';

class new_calculator extends StatefulWidget {
  const new_calculator({super.key});

  @override
  State<new_calculator> createState() => _new_calculatorState();
}

class _new_calculatorState extends State<new_calculator> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var mController = TextEditingController();
  var result = "";
  var rbgColor = Color.fromARGB(255, 128, 195, 227);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        shadowColor: Colors.green,
      ),
      body: Container(
        color: rbgColor,
        child: Column(
          children: [
            Text(
              "BMI",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 34),
            ),
            TextField(
              controller: wtController,
              decoration: InputDecoration(
                label: Text("Weight"),
                prefixIcon: Icon(Icons.line_weight_outlined),
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: ftController,
              decoration: InputDecoration(
                label: Text("Height (in feets)"),
                prefixIcon: Icon(Icons.height),
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: inController,
              decoration: InputDecoration(
                label: Text("Height (in inches)"),
                prefixIcon: Icon(Icons.height),
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: mController,
              decoration: InputDecoration(
                label: Text("Height (in meters)"),
                prefixIcon: Icon(Icons.height),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.new_calculatorRoute);

                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();
                  var m = mController.text.toString();

                  if ((wt != 0) && (ft != null || inch != null || m != null)) {
                    // BMI Calcultion
                    // int iwt = int.parse(wt);
                    double iwt = double.parse(wt);
                    double ift = double.parse(ft);
                    double iinch = double.parse(inch);
                    double im = double.parse(m);

                    double totalinch = ((ift * 12) + iinch);
                    double totalCM = totalinch * 2.54;
                    double totalINmeters = totalCM / 100;

                    var bmi = iwt / (totalINmeters * totalINmeters);
                    var BMI = bmi.toStringAsFixed(2);

                    if (bmi > 25) {
                    } else if (bmi < 18) {
                    } else {}
                    setState(() {
                      result = "The BMI is $BMI";
                    });
                  } else {
                    setState(() {
                      result = "please fill any one";
                    });
                  }
                  ;
                },
                child: Text("Calculate")),
            Text(
              result,
              style: TextStyle(decorationColor: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
