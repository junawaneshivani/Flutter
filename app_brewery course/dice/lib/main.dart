import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Dice',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Pacifico',
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton(
                    onPressed: () => setDiceNumbers(),
                    child: Image.asset(
                      'images/dice$leftDiceNumber.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton(
                    onPressed: () => setDiceNumbers(),
                    child: Image.asset(
                      'images/dice$rightDiceNumber.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setDiceNumbers(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}


