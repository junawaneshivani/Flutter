import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Scaffold widget has appbar property')
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: RichText(
            text: TextSpan (
              style: TextStyle(fontSize: 20, color: Colors.black),
              children: <TextSpan>[
                TextSpan( text: 'This is the body of the Scaffold Widget which takes up all the available space.'),
                TextSpan( text: "\n\nWhen the device's keyboard appears the Scaffold's ancestor MediaQuery widget's MediaQueryData.viewInsets changes and the Scaffold will be rebuilt. By default the scaffold's body is resized to make room for the keyboard. To prevent the resize set resizeToAvoidBottomInset to false.")
              ] 
            )
          )
        )
      ),
      backgroundColor: Colors.lightBlue.shade100, //Colors.lightBlue[100]
      floatingActionButton: FloatingActionButton(
        onPressed: (){print('You pressed me.');},
        tooltip: 'Click me',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}