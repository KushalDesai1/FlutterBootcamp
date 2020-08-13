import 'dart:ui';

import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.blue, "Two"),
    NumberAudio("three.wav", Colors.pink, "Three"),
    NumberAudio("four.wav", Colors.cyan, "Four"),
    NumberAudio("five.wav", Colors.amber, "Five"),
    NumberAudio("six.wav", Colors.brown, "Six"),
    NumberAudio("seven.wav", Colors.blueGrey, "Seven"),
    NumberAudio("eight.wav", Colors.indigo, "Eight"),
    NumberAudio("nine.wav", Colors.grey, "Nine"),
    NumberAudio("ten.wav", Colors.teal, "Ten"),
  ];

  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number App'),
        backgroundColor: Color(0xFFEA7773),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[0].buttonText),
                        color: numberList[0].buttonColor,
                        onPressed: () {
                          play(numberList[0].audioUri);
                        }),
                  ),
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[1].buttonText),
                        color: numberList[1].buttonColor,
                        onPressed: () {
                          play(numberList[1].audioUri);
                        }),
                  )
                ],
              ),
              Container(
                height: 50,
                color: Colors.black,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[2].buttonText),
                        color: numberList[2].buttonColor,
                        onPressed: () {
                          play(numberList[2].audioUri);
                        }),
                  ),
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[3].buttonText),
                        color: numberList[3].buttonColor,
                        onPressed: () {
                          play(numberList[3].audioUri);
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
                child: Text('hello'),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[4].buttonText),
                        color: numberList[4].buttonColor,
                        onPressed: () {
                          play(numberList[4].audioUri);
                        }),
                  ),
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[5].buttonText),
                        color: numberList[5].buttonColor,
                        onPressed: () {
                          play(numberList[5].audioUri);
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[6].buttonText),
                        color: numberList[6].buttonColor,
                        onPressed: () {
                          play(numberList[6].audioUri);
                        }),
                  ),
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[7].buttonText),
                        color: numberList[7].buttonColor,
                        onPressed: () {
                          play(numberList[7].audioUri);
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[8].buttonText),
                        color: numberList[8].buttonColor,
                        onPressed: () {
                          play(numberList[8].audioUri);
                        }),
                  ),
                  SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: RaisedButton(
                        child: Text(numberList[9].buttonText),
                        color: numberList[9].buttonColor,
                        onPressed: () {
                          play(numberList[9].audioUri);
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
