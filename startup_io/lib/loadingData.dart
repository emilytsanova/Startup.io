import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'choice.dart';
import 'dart:async';

class LoadingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 10), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChoicePage()));
      //TODO change ChoicePage to Fail page
    });
    return Scaffold(
      body: Container(
          color: Colors.black,
          //width: 300.0,
          //height: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              child: SpinKitFadingCircle(
                itemBuilder: (_, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.tealAccent[100] : Colors
                          .greenAccent[100],
                    ),
                  );
                },
                size: 150.0,
              ),
              ),
              SizedBox(
                child: FadeAnimatedTextKit(
                    text: [
                      "Contacting venture capitalists",
                      "Hiring WeWork space",
                      "Using unstable technology"
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