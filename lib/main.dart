import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/row_widget.dart';
import 'screens/text_widget.dart';
import 'screens/scaffold_widget.dart';
import 'screens/stateful_widgets.dart';


void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RowWidget()     
      )
    );
  }
}