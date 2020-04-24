import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/objects/bmi_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiBrain});

  final BmiBrain bmiBrain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          this.bmiBrain.getResult(),
                          style: kLabelTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(double.parse(this.bmiBrain.getBmi().toString()).toStringAsFixed(1),
                            style: kNumberTextStyle,
                            textAlign: TextAlign.center),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            this.bmiBrain.getInterpretation(),
                            style: kLabelTextStyle,
                            textAlign: TextAlign.center),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.lightBlue,
              child: Text(
                "RE-CALCULATE",
                style: kLabelTextStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              height: 70,
              minWidth: double.infinity,
            ),
          ],
        ));
  }
}
