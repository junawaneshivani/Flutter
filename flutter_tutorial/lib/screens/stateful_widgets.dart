import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul Widget')
      ),
      body: Center(
        child: Text(
          'Counter: $counter',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
             incrementCounter();
        }),
        child: Icon(Icons.add)
      ),
    );
  }

  void incrementCounter(){
    this.counter++;
  }
}