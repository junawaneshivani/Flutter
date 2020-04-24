import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard(
      {@required this.text,
      @required this.icon,
      @required this.onTap,
      @required this.color});

  final String text;
  final IconData icon;
  final Function onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              this.icon,
              size: 50,
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: kLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
