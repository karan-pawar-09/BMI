import 'package:bmi/constantdata.dart';
import 'file:///D:/Codes/Android/bmi/lib/screens/input.dart';
import 'package:flutter/material.dart';
import '../components/blankCard.dart';
import '../components/bottomButton.dart';
import 'package:bmi/calculations.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.interpritation,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpritation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: BlankCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult.toUpperCase(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpritation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonData: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
