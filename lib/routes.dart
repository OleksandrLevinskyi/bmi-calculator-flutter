import 'package:bmi_calculator/models/Calculator.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => InputPage(),
  '/results': (context) => ResultsPage(),
};

class ResultsPageArgs {
  final Calculator calculator;

  ResultsPageArgs(this.calculator);
}
