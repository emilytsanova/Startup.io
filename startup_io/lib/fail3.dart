import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'fail2.dart';


class FailureExplanationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 70,
                child: FadeAnimatedTextKit(
                    isRepeatingAnimation: false,
                    text: [
                      "Here's why you failed"
                    ],
                    textStyle:
                    TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Canterbury",
                      color: Colors.redAccent[200],
                    ),
                    textAlign: TextAlign.center,
                    alignment: AlignmentDirectional
                        .center // or Alignment.topLeft
                ),
              ),
              SizedBox(
                child: FadeAnimatedTextKit(
                    isRepeatingAnimation: false,
                    text: [
                      "Explore the graph below to see the increase of failure rates"
                          "for startups in the first 5 years of operation."
                    ],
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Canterbury",
                      color: Colors.redAccent[200],
                    ),
                    textAlign: TextAlign.center,
                    alignment: AlignmentDirectional
                        .center // or Alignment.topLeft
                ),
              ),
              SizedBox(
                height: 70,
                child: AnimatedPieChartExample(),
              ),
              SizedBox(
                height: 70,
                child: FadeAnimatedTextKit(
                    isRepeatingAnimation: false,
                    text: [
                      "BE UNIQUE AND YOU'LL MAKE IT!"
                    ],
                    textStyle: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Canterbury",
                      color: Colors.tealAccent[400],
                    ),
                    textAlign: TextAlign.center,
                    alignment: AlignmentDirectional
                        .center // or Alignment.topLeft
                ),
              ),
            ],
          )
      ),
    );
  }
}