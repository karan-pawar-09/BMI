import 'package:flutter/material.dart';
import 'package:bmi/constantdata.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonData});
  final Function onTap;
  final String buttonData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(child: Text(buttonData, style: kLargeButtonTextStyle)),
      ),
    );
  }
}