import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/input_card.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/objects/bmi_brain.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  double height = 5.4;
  int weight = 70;
  int age = 23;
  Gender gender;

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
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    color: gender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    icon: FontAwesomeIcons.mars,
                    text: "MALE",
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    color: gender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    icon: FontAwesomeIcons.venus,
                    text: "FEMALE",
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        '  feet',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: kMinHeight,
                    max: kMaxHeight,
                    onChanged: (double changedValue) {
                      setState(() {
                        this.height = double.parse((changedValue).toStringAsFixed(1));
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InputCard(
                    text: "WEIGHT",
                    number: weight,
                    onPressedAdd: () {
                      setState(() {
                        this.weight++;
                      });
                    },
                    onPressedSub: () {
                      setState(() {
                        this.weight--;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: InputCard(
                    text: "AGE",
                    number: age,
                    onPressedAdd: () {
                      setState(() {
                        this.age++;
                      });
                    },
                    onPressedSub: () {
                      setState(() {
                        this.age--;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            color: Colors.lightBlue,
            child: Text(
              "CALCULATE",
              style: kLabelTextStyle,
            ),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ResultPage(bmiBrain: BmiBrain(
                      age: this.age,
                      gender: this.gender,
                      height: this.height,
                      weight: this.weight
                    ),);
                  }
                )
              );
            },
            height: 70,
            minWidth: double.infinity,
          ),
        ],
      ),
    );
  }
}
