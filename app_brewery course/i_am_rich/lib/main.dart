import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(  
          appBar: AppBar(
            title: Center(
              child:Text('I am Rich'),
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
