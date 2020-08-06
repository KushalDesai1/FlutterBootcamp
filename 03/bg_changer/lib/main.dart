import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.accents,
    Colors.blue,
    Colors.cyan,
    Colors.redAccent,
    Colors.pink,
    Colors.indigo
  ];

  var btnColors = [
    Colors.green,
    Colors.lightBlue,
    Colors.teal,
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.indigo[400]
  ];

  var currentColor = Colors.white;
  var currBtnColor = Colors.black;

  setBGColor() {
    var random = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[random];
      currBtnColor = btnColors[random];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: currBtnColor,
          padding: EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 25.0),
          elevation: 10,
          child: Text(
            'Change BG',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          onPressed: setBGColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
