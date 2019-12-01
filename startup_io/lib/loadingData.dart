import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 300.0,
      height: 300.0,
      child: SpinKitFadingCircle(
        itemBuilder: (_, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.tealAccent[100] : Colors.greenAccent[100],
            ),
          );
        },
        size: 150.0,
      ),
    );
  }
}