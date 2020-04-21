import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int quote = Random().nextInt(6) + 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Card(
            child: InkWell(
              onTap: () {
                setState(() {
                  quote = Random().nextInt(6) + 2;
                });
              },
              child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/$quote.png"),
                  fit: BoxFit.fill,
                ),
              ),
          ),
            ),
        )
      ),
    );
  }

 
}