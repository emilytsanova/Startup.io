import'package:flutter/material.dart';
import 'dart:math';

///This class builds a stateless card that expands to show more information on tap
class CustomCard extends StatelessWidget{

final int num;
final int type;
const CustomCard(this.num, this.type);

  Text _getTitle(){
    if (num == 1){
      return Text("Startup Name");
    }
    else if (num ==2){
      return Text("Startup Slogan");
    }
    else{
      return Text("Startup Description");
    }
  }

  Text _getInfo(){
    switch (num) {
      case 1: return Text(_getRandomName());
        break;
      case 2: return Text(_getRandomSlogan());
        break;
      case 3: return Text(_getRandomDesc());
        break;
      default:
    }
  }

  String _getRandomName(){
    List ai = ["Smartly", "TooDeep.yo"];
    List blockchain = ["BreakingBlocks", "Blockr", "", ""];
    List fintech = ["Fin.ly", "Capital Money", "American Slow"];
    List cybersec = ["Defence.io", "Safety.io", "BuildTheWall.io"];
    List socialmedia = ["Circle", "Oval", "Elipse", "Semi-Loop"];
    List shrug = ["Potato Inc", "Sleep", "Maybe", "Eh"];

    Random random = new Random();
    switch (type) {
      case 1: return ai[random.nextInt(ai.length)];
        break;
      case 2: return blockchain[random.nextInt(blockchain.length)];
        break;
      case 3: return fintech[random.nextInt(fintech.length)];
        break;
      case 4: return cybersec[random.nextInt(cybersec.length)];
        break;
      case 5: return socialmedia[random.nextInt(socialmedia.length)];
        break;
      case 6: return shrug[random.nextInt(shrug.length)];
        break;
      default:
    }
  }

  String _getRandomSlogan(){
    List ai = ["Don't learn without it", "Don't smart without it"];
    List blockchain = ["Don't go further without", "Don't trust without it"];
    List fintech = ["Don't be debt without it", "Don't go poor without it"];
    List cybersec = ["Live in fear wihtout it"];
    List socialmedia = ["Don't sociallize without it", "Don't be social without it",
      "Don't find friends without it"];
    List shrug = ["Don't die without it", "Don't ???? without", "Don't", "Why would wihthout?"];

    Random random = new Random();
    switch (type) {
      case 1: return ai[random.nextInt(ai.length)];
        break;
      case 2: return blockchain[random.nextInt(blockchain.length)];
        break;
      case 3: return fintech[random.nextInt(fintech.length)];
        break;
      case 4: return cybersec[random.nextInt(cybersec.length)];
        break;
      case 5: return socialmedia[random.nextInt(socialmedia.length)];
        break;
      case 6: return shrug[random.nextInt(shrug.length)];
        break;
      default:
    }
  }

  String _getRandomDesc(){
    List ai = ["Revolutionizing the world one if statement a time", "Paving the way though if statements",
      "", ""];
    List blockchain = ["Revolutionizing the world of finance though Blockchain", "Using Blockchain to free your money",
      "Liberating your money through the power of bloclchain"];
    List fintech = ["Helping your money walk further", "In for a penny, in for a pound",
      "You want debt, we'll provide it", "You want money, we have it"];
    List cybersec = ["Never fear your data will be lost", "Your privacy is your privacy with our help",
      "We keep you privates private", "We only givr you the right amount of exposure"];
    List socialmedia = ["Keeping friends together through thick and thin", "Merging lives together", "Keep Humanity close"];
    List shrug = ["Never wonder what to do ever again", "Revolutionizing the meaning of never being bored"];

    Random random = new Random();
    switch (type) {
      case 1: return ai[random.nextInt(ai.length)];
        break;
      case 2: return blockchain[random.nextInt(blockchain.length)];
        break;
      case 3: return fintech[random.nextInt(fintech.length)];
        break;
      case 4: return cybersec[random.nextInt(cybersec.length)];
        break;
      case 5: return socialmedia[random.nextInt(socialmedia.length)];
        break;
      case 6: return shrug[random.nextInt(shrug.length)];
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context){
    return Hero(
      tag: "card$num",
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Material(
                  child: ListTile(
                    title: _getTitle(),
                    subtitle: _getInfo(),
                  ),
                )
              ],
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: Material(
                type: MaterialType.transparency,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///This class builds a widget that contains the extended information that will be displayed when a card is tapped
class PageItem extends StatelessWidget {
  final int num;

  const PageItem({Key key, this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(
      primary: false,
      leading: IconTheme(data: IconThemeData(color: Colors.white), child: CloseButton()),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Stack(children: <Widget>[
      Hero(
        tag: "card$num",
        child: Material(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 485.0 / 384.0,
                child: Image.network("https://picsum.photos/485/384?image=$num"),
              ),
              Material(
                child: ListTile(
                  title: Text("Item $num"),
                  subtitle: Text("This is item #$num"),
                ),
              ),
              Expanded(
                child: Center(child: Text("Some more content goes here!")),
              )
            ],
          ),
        ),
      ),
      Column(
        children: <Widget>[
          Container(
            height: mediaQuery.padding.top,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: appBar.preferredSize.height),
            child: appBar,
          )
        ],
      ),
    ]);
  }
}