import 'package:bmi_calculator/conponents/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../conponents/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.result,
      required this.bmi,
      required this.interpretation});

  final String result;
  final String bmi;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    Color rightStyle(result) {
      if (result == kBmiInterpretation7) {
        return kBmiInterpretationColor7;
      } else if (result == kBmiInterpretation6) {
        return kBmiInterpretationColor6;
      } else if (result == kBmiInterpretation5) {
        return kBmiInterpretationColor5;
      } else if (result == kBmiInterpretation4) {
        return kBmiInterpretationColor4;
      } else if (result == kBmiInterpretation3) {
        return kBmiInterpretationColor3;
      } else if (result == kBmiInterpretation2) {
        return kBmiInterpretationColor2;
      } else {
        return kBmiInterpretationColor1;
      }
    }

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('BMI CALCULATOR'),
        //   centerTitle: true,
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.bottomLeft,
              padding: kCardMargin,
              child: const Text(
                kResultPageTitleText,
                style: kTitleTextStyle,
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            result.toUpperCase(),
                            style: kResultPageTextStyle.copyWith(
                                color: rightStyle(result)),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            bmi.toUpperCase(),
                            style: kNumberTextStyle.copyWith(fontSize: 100.0),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            kNormalBmiRangeLabel,
                            textAlign: TextAlign.center,
                            style: kLabelTextStyle.copyWith(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            '18,5 - 25 Kg/m2',
                            textAlign: TextAlign.center,
                            style: kResultPageTextStyle.copyWith(
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kResultPageTextStyle,
                        ),
                      ),
                    ],
                  ),
                )),
            BottomButton(
              text: kReCalcultCardLabel.toUpperCase(),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
