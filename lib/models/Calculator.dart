import 'dart:math';

class Calculator {
  int height;
  int weight;

  double _bmi;

  Calculator(height, weight) {
    this.height = height;
    this.weight = weight;

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
