import 'package:flutter/material.dart';
import './constants.dart';
import './reusable_card.dart';
import './bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.bmiResult,
      required this.interpation,
      required this.resultText,
      Key? key})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: titleText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              clr: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    interpation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
