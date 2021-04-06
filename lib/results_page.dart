import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResults, @required this.resultsText, @required this.interpretation});

  final String bmiResults;
  final String resultsText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kResultsTextStyle,
              )
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    resultsText.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kWeightClassTextStyle,
                  ),
                  Text(
                    bmiResults,
                    textAlign: TextAlign.center,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
