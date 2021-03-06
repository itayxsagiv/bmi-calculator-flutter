import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        padding: EdgeInsets.only(
          bottom: 20,
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 10,
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}