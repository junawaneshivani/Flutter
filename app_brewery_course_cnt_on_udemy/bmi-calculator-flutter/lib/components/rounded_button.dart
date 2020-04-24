import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  RoundButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;
  
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: Colors.lightBlue,
      onPressed: onPressed,
      elevation: 6,
      disabledElevation: 6,
      constraints: BoxConstraints.tightFor(width:40, height:40),
      shape: CircleBorder(),
    );
  }
}