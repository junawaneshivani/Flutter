import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}

