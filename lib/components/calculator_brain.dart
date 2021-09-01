import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Eat less!';
    } else if (_bmi > 18.5) {
      return 'Good job!';
    } else {
      return 'Eat more!';
    }
  }
}
