import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shimmer/shimmer.dart';
import 'fail.dart';
import 'infopage.dart';


class ChoicePage extends StatefulWidget {
  ChoicePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: 
        Padding(
          padding:EdgeInsets.symmetric(horizontal: 15, vertical: 100),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 250.0,
              child: TypewriterAnimatedTextKit(
                isRepeatingAnimation: false,
                onTap: () {
                    print("Tap Event");
                  },
                text: [
                  "Where's Your Passion?",
                ],
                textStyle: TextStyle(
                  color: Colors.tealAccent[100],
                    fontSize: 30.0,
                    fontFamily: "Agne",
                ),
                textAlign: TextAlign.center,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("A.I.", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      fontFamily: "Agne", 
                      ),
                        textAlign: TextAlign.center,
                      ),)
                    ),
                    
                  ),
                  onPressed: (){Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => InfoPage(1)));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Bitcoin", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    fontFamily: "Agne",
                    ),
                      textAlign: TextAlign.center,
                    ),)
                    ),
                  ),
                  onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => InfoPage(2)));
                        },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("FinTech", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    fontFamily: "Agne",
                    ),
                      textAlign: TextAlign.center,
                    ),)
                    ),
                    
                    
                  ),
                  onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => InfoPage(3)));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("CyberSec", style: TextStyle(
                      color: Colors.white,
                    fontFamily: "Agne",
                      fontSize: 16,
                    ),
                      textAlign: TextAlign.center,
                    ),)
                    ),
                    
                    
                  ),
                  onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => InfoPage(4)));
                        },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Social Media", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    fontFamily: "Agne",
                    ),
                      textAlign: TextAlign.center,
                    ),)
                    ),
                    
                    
                  ),
                  onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => InfoPage(5)));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("¯\\_(ツ)_/¯", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: "Agne",
                      ),
                      textAlign: TextAlign.center,
                    ),)
                    ),
                    
                    
                  ),
                  onPressed: (){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => InfoPage(6)));
                        },
                ),
              ],
            ),
          ],
        ),
      ),
      ), );
  }
}
