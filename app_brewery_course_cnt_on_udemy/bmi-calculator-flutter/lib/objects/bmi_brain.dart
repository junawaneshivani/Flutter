
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BmiBrain{

  BmiBrain( {@required this.gender, @required this.age, @required this.weight, @required this.height} ){
    this.height *= 0.3048;
    print(this.height);
    this._bmi = this.weight / (this.height*this.height);
    print(this._bmi);
  }

  Gender gender;
  double height;
  int weight, age;
  double _bmi;

  double getBmi(){
    return this._bmi;
  }

  String getResult(){
    if (_bmi < 18.5)
      return 'UNDERRWEIGHT';
    if (_bmi < 24.9)
      return 'NORMAL';
    return 'OVERRWEIGHT';
  }

  String getInterpretation(){
    if (_bmi < 18.5)
      return 'Your bmi is below the recommended level. Eat healthy and gain weight!';
    if (_bmi < 24.9)
      return 'You have a normal body weight. Good Job!';
    return 'Your bmi is above the recommended level. Staying positive, exercise and diet is the key!';

  }
}