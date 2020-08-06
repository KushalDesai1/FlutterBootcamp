import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "quatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nuave",
    "dietz"
  ];
  List<String> engNumbers = [
    "one - 1",
    "two - 2",
    "three - 3",
    "four - 4",
    "five - 5",
    "six - 6",
    "seven - 7",
    "eight - 8",
    "nine - 9",
    "ten - 10"
  ];

  String defaultText = "Spanish Numbers";
  String engText = "English Numbers";

  void displaySNumbers() {
    setState(() {
      defaultText = spanishNumbers[counter];
      engText = engNumbers[counter];
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful App'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(defaultText, style: TextStyle(fontSize: 30.0)),
              Text(engText, style: TextStyle(fontSize: 30.0),),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                child: Text(
                  'Call Numbers',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: displaySNumbers,
                color: Colors.orange,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: displaySNumbers,
        backgroundColor: Colors.orange,
        child: Text('Call'),
        splashColor: Colors.amber,
      ),
    );
  }
}
