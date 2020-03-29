import 'package:flutter/material.dart';
import 'screens/text_widget.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TextWidget()     
      )
    );
  }
}