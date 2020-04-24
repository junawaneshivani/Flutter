import 'package:bmi_calculator/components/rounded_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard(
      {@required this.text,
      @required this.number,
      @required this.onPressedAdd,
      @required this.onPressedSub});

  final String text;
  final int number;
  final Function onPressedAdd, onPressedSub;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        color: kActiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: kLabelTextStyle,
            ),
            SizedBox(height: 5),
            Text(
              this.number.toString(),
              style: kNumberTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RoundButton(
                  icon: Icons.remove,
                  onPressed: onPressedSub,
                ),
                RoundButton(
                  icon: Icons.add,
                  onPressed: onPressedAdd,
                ),
              ],
            ),
          ],
        ),
      );
  }
}


