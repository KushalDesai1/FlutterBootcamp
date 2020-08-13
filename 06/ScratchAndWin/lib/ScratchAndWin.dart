import 'package:flutter/material.dart';
import "dart:math";

class ScratchAndWin extends StatefulWidget {
  @override
  _ScratchAndWinState createState() => _ScratchAndWinState();
}

class _ScratchAndWinState extends State<ScratchAndWin> {
  // TODO: Import & link images
  AssetImage circle = AssetImage("images/circle.png");
  AssetImage lucky = AssetImage("images/rupee.png");
  AssetImage unlucky = AssetImage("images/sadFace.png");

  // TODO: Get an array for 25 buttons
  List<String> itemArray;
  String message;
  int luckyNumber;
  int noOfAttempts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemArray = List<String>.generate(25, (index) => "empty");
    noOfAttempts = 5;
    message = 'Only $noOfAttempts attempts are allowed';
    generateRandomNumber();
  }

  generateRandomNumber() {
    int random = Random().nextInt(25);
    setState(() {
      luckyNumber = random;
    });
  }

  // TODO: Define getImage method
  AssetImage getImage(int index) {
    String currentState = itemArray[index];
    switch (currentState) {
      case 'lucky':
        return lucky;
        break;
      case 'unlucky':
        return unlucky;
        break;
    }
    return circle;
  }

  // TODO: PlayGame methods
  playGame(int index) {
    if (luckyNumber == index) {
      setState(() {
        itemArray[index] = "lucky";
        noOfAttempts = noOfAttempts - 1;
        message = 'Only $noOfAttempts attempts are allowed';
      });
    } else {
      setState(() {
        itemArray[index] = "unlucky";
        noOfAttempts = noOfAttempts - 1;
        message = 'Only $noOfAttempts attempts are allowed';
      });
    }

    if (noOfAttempts == 0) {
      this.resetGame();
    }
  }

  // TODO: ShowAll
  showAll() {
    setState(() {
      itemArray = List<String>.filled(25, "unlucky");
      itemArray[luckyNumber] = "lucky";
    });
  }

  //TODO: ResetAll
  resetGame() {
    setState(() {
      itemArray = List<String>.filled(25, "empty");
      noOfAttempts = 5;
      message = 'Only $noOfAttempts attempts are allowed';
    });
    generateRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratch & Win'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(20.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: itemArray.length,
                  itemBuilder: (context, i) => SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            playGame(i);
                          },
                          child: Image(image: this.getImage(i)),
                        ),
                      ))),
          Container(
              margin: EdgeInsets.all(15.0),
              color: Colors.black,
              child: Center(
                child: Text(
                  message,
                  style: TextStyle(color: Colors.white, fontSize: 23.0),
                ),
              )),
          Container(
            margin: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                this.showAll();
              },
              color: Colors.cyan,
              padding: EdgeInsets.all(20.0),
              child: Text('Show All'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                this.resetGame();
              },
              color: Colors.cyan,
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Reset Game',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(15.0),
              color: Colors.black,
              child: Center(
                child: Text(
                  'LearnCodeOnline.in',
                  style: TextStyle(color: Colors.white, fontSize: 23.0),
                ),
              ))
        ],
      ),
    );
  }
}
