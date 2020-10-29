import 'package:flutter/material.dart';
import '../constantdata.dart';
class WidgetData extends StatelessWidget {
  WidgetData({this.text, this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style:kLabelTextStyle,
        ),
      ],
    );
  }
}