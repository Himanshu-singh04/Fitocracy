// ignore: file_names

import 'dart:ui';

import 'package:fitocracy_app/main.dart';
import 'package:fitocracy_app/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

// ignore: camel_case_types, must_be_immutable
class BMI_Calculator extends StatefulWidget {
  BMI_Calculator({super.key});

  Gender activeGender = Gender.male;

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

// ignore: camel_case_types
class _BMI_CalculatorState extends State<BMI_Calculator> {
  @override
  Widget build(BuildContext context) {
    int weight = 45;
    int age = 5;
    int height = 120;
    Gender activeGender = Gender.male;
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI_CALCULATOR"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: ReusableCard(
                  colour:
                      activeGender == Gender.male ? Colors.red : Colors.blue,
                  onPressed: () {
                    setState(() {
                      activeGender = Gender.male;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text("male")
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour:
                      activeGender == Gender.female ? Colors.red : Colors.blue,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Female")
                      ]),
                  onPressed: () {
                    setState(() {
                      activeGender = Gender.female;
                    });
                  },
                ))
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Center(
                    child: Text(
                      "Height",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(height.toString()), Text("cm")],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.green,
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        trackHeight: 1),
                    child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 200,
                        onChanged: (double value) {
                          setState(() {
                            height = value.toInt();
                          });
                        }),
                  )
                ],
              ),
              onPressed: () {},
            )),
            Expanded(
                child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: Colors.greenAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight"),
                      SizedBox(
                        height: 15,
                      ),
                      Text(weight.toString()),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      )
                    ],
                  ),
                  onPressed: () {},
                )),
                Expanded(
                    child: ReusableCard(
                  colour: Colors.greenAccent,
                  child: Container(),
                  onPressed: () {},
                ))
              ],
            )),
            Container(
                margin: const EdgeInsets.only(
                    top:
                        10), //distance between the bottom bar and above widgets
                height: 20,
                padding: const EdgeInsets.only(bottom: 0),
                width: double.infinity,
                color: Colors.brown, //colour for the bottom tab
                child: const Center(child: Text("Calculate")))
          ],
        ));
  }
}
