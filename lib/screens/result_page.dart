import 'package:bmi_calculator_praktikum_o/components/bottom_button.dart';
import 'package:bmi_calculator_praktikum_o/components/reusable_widget.dart';
import 'package:bmi_calculator_praktikum_o/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';
  const ResultPage({ 
   Key key,
   this.bmiResult,
   this.resultText,
   this.interpretation,
   }) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final ResultPage resultPage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('HASIL HITUNG'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'HASIL HITUNG', 
                style: kTittleTextStyle
            ),
            ),
            ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
          color: kActiveCardColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              Expanded(
                child: Center(
                  child: Text(
                    resultPage.resultText, 
                    style: kResultTextStyle,
              ),
              ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    resultPage.bmiResult, 
                    style: kBMITextStyle
              ),
              ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    resultPage.interpretation, 
                    style: kBodyTextStyle,
              ),
              ),
              )
            ],
          ),
          ),
          ),
          BottomButton(
            buttonText: "HITUNG ULANG", 
            onTap: () {
              Navigator.pushNamed(context, '/');
          })
        ],
      ),
    );
  }
}