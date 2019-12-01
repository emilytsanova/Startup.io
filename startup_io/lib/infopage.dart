import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shimmer/shimmer.dart';
import 'choice.dart';
import 'customcard.dart';


class InfoPage extends StatefulWidget {
  final int type;
  InfoPage(this.type);


  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
   
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, int index) {
            return CustomCard(index+1, widget.type);
          }
        );
  }
}
