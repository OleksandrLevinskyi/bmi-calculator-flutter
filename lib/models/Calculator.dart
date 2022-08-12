import 'dart:math';
import 'package:flutter/material.dart';

class Calculator {
  String _resultLabel;
  String _resultAnalysis;
  Color _resultLabelColor;
  double _bmi;

  Calculator(height, weight) {
    _bmi = weight / pow(height / 100, 2);

    calculateBMI();
  }

  String getBMI() => _bmi.toStringAsFixed(1);

  String getResultLabel() => _resultLabel;

  Color getResultLabelColor() => _resultLabelColor;

  String getResultAnalysis() => _resultAnalysis;

  void calculateBMI() {
    if (_bmi >= 25.0) {
      _resultLabel = 'Overweight';
      _resultLabelColor = Color(0xFFD82424);
      _resultAnalysis = 'Work out more!';
    } else if (_bmi > 18.5) {
      _resultLabel = 'Normal';
      _resultLabelColor = Color(0xFF24D876);
      _resultAnalysis = 'Good job!';
    } else {
      _resultLabel = 'Underweight';
      _resultLabelColor = Color(0xFF247ED8);
      _resultAnalysis = 'Increase food consumption!';
    }
  }
}
