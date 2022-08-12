import 'dart:math';
import 'package:flutter/material.dart';

class Calculator {
  double _bmi;

  Calculator(height, weight) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResultLabel() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    }

    if (_bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  Color getResultLabelColor() {
    if (_bmi >= 25.0) {
      return Color(0xFFD82424);
    }

    if (_bmi > 18.5) {
      return Color(0xFF24D876);
    }

    return Color(0xFF247ED8);
  }

  String getResultAnalysis() {
    if (_bmi >= 25) {
      return 'Work out more!';
    }

    if (_bmi > 18.5) {
      return 'Good job!';
    }

    return 'Increase food consumption!';
  }
}
