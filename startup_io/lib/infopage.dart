import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shimmer/shimmer.dart';
import 'choice.dart';
import 'customcard.dart';
import 'fail.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'loadingData.dart';



class InfoPage extends StatefulWidget {
  final int type;
  InfoPage(this.type);


  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: new ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, int index) {
            return CustomCard(index+1, widget.type);
          }),
          floatingActionButton: FloatingActionButton.extended(
            label: Text("Take The Plunge"),
            icon: Icon(FontAwesomeIcons.tint),
            backgroundColor: Colors.tealAccent[400],
            splashColor: Colors.white12,
            onPressed : (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingData()));
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }
}
