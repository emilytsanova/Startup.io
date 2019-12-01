import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shimmer/shimmer.dart';
import 'choice.dart';


class LandingPage extends StatefulWidget {
  LandingPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250.0,
              child: TypewriterAnimatedTextKit(
                isRepeatingAnimation: true,
                onTap: () {
                    print("Tap Event");
                  },
                text: [
                  "startup.io",
                ],
                textStyle: TextStyle(
                    fontSize: 50.0,
                    fontFamily: "Agne"
                ),
                textAlign: TextAlign.center,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
              ),
            ),
            Text(""),
            FlatButton(
              color: Colors.black12,
              splashColor: Colors.white54,
              child: Text('Free Yourself',
                          style:TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Agne"
                          )
                        ),
              onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => new ChoicePage()));
                        },
            ),
          ],
        ),
      ),
      );
  }
}
