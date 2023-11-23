import 'dart:math';

import 'constants.dart';

class CalculatorBrain {
  late final int height;
  late final int weight;
  late double _bmi;

  CalculatorBrain(this.height, this.weight) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return kBmiInterpretation7;
    } else if (_bmi > 35) {
      return kBmiInterpretation6;
    } else if (_bmi > 30) {
      return kBmiInterpretation5;
    } else if (_bmi > 25) {
      return kBmiInterpretation4;
    } else if (_bmi > 18.5) {
      return kBmiInterpretation3;
    } else if (_bmi > 16.5) {
      return kBmiInterpretation2;
    } else {
      return kBmiInterpretation1;
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return kHighBMIInterpretationText;
    } else if (_bmi > 18) {
      return kNormalBMIInterpretationText;
    } else {
      return kLowBMIInterpretationText;
    }
  }
}
