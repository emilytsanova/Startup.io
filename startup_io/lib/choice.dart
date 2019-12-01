import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'fail.dart';
import 'infopage.dart';


Color colour;
int choice;

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
                  duration: Duration(milliseconds: 5000),

                  isRepeatingAnimation: false,
                text: [
                  "Where's Your Passion?",
                ],
                textStyle: TextStyle(
                  color: Colors.tealAccent[400],
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
                        color: Colors.tealAccent[400],
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
                  onPressed: (){
                    choice = 1;
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => QuestionTwoPage()));
                  },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green[400],
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
                    choice = 2;
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => QuestionTwoPage()));
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
                        color: Colors.green[400],
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
                    choice = 3;
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => QuestionTwoPage()));
                  },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent[400],
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
                    choice = 4;
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => QuestionTwoPage()));
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
                        color: Colors.tealAccent[400],
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
                    choice = 5;
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => QuestionTwoPage()));
                  },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green[400],
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
                    choice = 6;
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => QuestionTwoPage()));
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

class QuestionTwoPage extends StatefulWidget {
  QuestionTwoPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _QuestionTwoPageState createState() => _QuestionTwoPageState();
}

class _QuestionTwoPageState extends State<QuestionTwoPage> {
   
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
                  duration: Duration(milliseconds: 5000),
                text: [
                  "What's Your Favourite Colour?",
                ],
                textStyle: TextStyle(
                  color: Colors.tealAccent[400],
                    fontSize: 28.0,
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
                        color: Colors.tealAccent[400],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.monetization_on, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    colour = Colors.tealAccent[400];
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionThreePage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.monetization_on, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    colour = Colors.lightBlue[900];
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionThreePage()));
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
                        color: Colors.redAccent[700],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.monetization_on, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    colour = Colors.redAccent[700];
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionThreePage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.pink[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.monetization_on, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    colour = Colors.pink[900];
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionThreePage()));
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
                        color: Colors.orange[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.monetization_on, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    colour = Colors.orange[800];
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionThreePage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.monetization_on, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    colour = Colors.lightGreen[800];
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionThreePage()));
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

class QuestionThreePage extends StatefulWidget {
  QuestionThreePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _QuestionThreePageState createState() => _QuestionThreePageState();
}

class _QuestionThreePageState extends State<QuestionThreePage> {
   
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
                  duration: Duration(milliseconds: 5000),

                  onTap: () {
                    print("Tap Event");
                  },
                text: [
                  "Which Entrepreneur You Relate the Most To?",
                ],
                textStyle: TextStyle(
                  color: Colors.tealAccent[400],
                    fontSize: 22.0,
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Mark Zuckerburg", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => QuestionFourPage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Elon Musk", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => QuestionFourPage()));
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Jeff Bezos", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => QuestionFourPage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Bill Gates", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => QuestionFourPage()));
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Steve Jobs", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => QuestionFourPage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Oprah", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => QuestionFourPage()));
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

class QuestionFourPage extends StatefulWidget {
  QuestionFourPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _QuestionFourPageState createState() => _QuestionFourPageState();
}

class _QuestionFourPageState extends State<QuestionFourPage> {
   
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
                  duration: Duration(milliseconds: 5000),

                  isRepeatingAnimation: false,
                text: [
                  "How Risky Are You?",
                ],
                textStyle: TextStyle(
                  color: Colors.tealAccent[400],
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(FontAwesomeIcons.creditCard, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionFivePage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(FontAwesomeIcons.snowboarding, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionFivePage()));
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(FontAwesomeIcons.cat, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionFivePage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(FontAwesomeIcons.fire, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionFivePage()));
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(FontAwesomeIcons.plane, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionFivePage()));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:  colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(FontAwesomeIcons.skullCrossbones, color: Colors.white,),
                        )
                    ),
                    
                  ),
                  onPressed: (){
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QuestionFivePage()));
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

class QuestionFivePage extends StatefulWidget {
  QuestionFivePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _QuestionFivePageState createState() => _QuestionFivePageState();
}

class _QuestionFivePageState extends State<QuestionFivePage> {
   
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
                  duration: Duration(milliseconds: 5000),

                  isRepeatingAnimation: false,
                text: [
                  "How big is your network?",
                ],
                textStyle: TextStyle(
                  color: Colors.tealAccent[400],
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("1", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => InfoPage(choice)));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("2", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => InfoPage(choice)));
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("5", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => InfoPage(choice)));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("8", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => InfoPage(choice)));
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
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("11", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => InfoPage(choice)));
                        },
                ),
                FlatButton(
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colour,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("15", style: TextStyle(
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
                          MaterialPageRoute(builder: (context) => InfoPage(choice)));
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


