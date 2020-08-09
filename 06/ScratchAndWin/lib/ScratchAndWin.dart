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
  int luckyNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemArray = List<String>.generate(25, (index) => "empty");
    generateRandomNumber();
  }

  generateRandomNumber() {
    int random = Random().nextInt(25);
    setState(() {
      luckyNumber = random;
    });
  }

  // TODO: Define getImage method

  // TODO: PlayGame methods

  // TODO: ShowAll

  //TODO: ResetAll
  resetGame() {
    setState(() {
      itemArray = List<String>.filled(25, "empty");
    });
    generateRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratch & Win'),
      ),
    );
  }
}
