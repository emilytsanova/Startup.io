import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'fail3.dart';
import 'dart:async';



class FailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 8), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => FailureExplanationPage()));
    });
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              child: FadeAnimatedTextKit(
                    isRepeatingAnimation: false,
                    text: [
                      "Hey ",
                      "Hey ",
                      "YOU FAILED! "
                    ],
                    textStyle: 
                    TextStyle(
                        fontSize: 55.0,
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
                      "", "",
                      "(☞ﾟヮﾟ)☞ ☜(ﾟヮﾟ☜)"
                    ],
                    textStyle: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Canterbury",
                      color: Colors.redAccent[200],
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