import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          //color: Colors.white,
          //width: MaxColumnWidt,
          //height: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                      color: Colors.redAccent[100],
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
                      //"(☞ﾟヮﾟ)☞ ",
                      //"☜(ﾟヮﾟ☜) ",
                      "", "",
                      "(☞ﾟヮﾟ)☞ ☜(ﾟヮﾟ☜) "
                    ],
                    textStyle: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Canterbury",
                      color: Colors.tealAccent[100],
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