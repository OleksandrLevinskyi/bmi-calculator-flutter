import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/models/Calculator.dart';
import 'package:bmi_calculator/routes.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultsPageArgs args =
        ModalRoute.of(context).settings.arguments as ResultsPageArgs;
    final Calculator calculator = args.calculator;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calculator.getResultLabel(),
                    style: kResultTextStyle.copyWith(
                      color: calculator.getResultLabelColor(),
                    ),
                  ),
                  Text(
                    calculator.getBMI(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    calculator.getResultAnalysis(),
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () => Navigator.pop(context),
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
