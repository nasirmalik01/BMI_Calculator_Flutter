import 'package:bmi_calculator/CalculatorBrain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/ResusableWidget.dart';
import '../components/IconContent.dart';
import '../constants.dart';
import 'resultPage.dart';
import '../components/bottomContainerWidget.dart';
import '../components/setRawMaterialButton.dart';

enum GenderType { male, female }

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

var maleCard = 0xFF111328;
var femaleCard = 0xFF111328;
int weightCount = 74;


GenderType genderType;

//var cardColor=0xFF111328;
/*
void updateState(GenderType gender){
  if(gender == GenderType.male){
      if(maleCard == inActiveCardColor){
          maleCard = activeCardColor;
          femaleCard = inActiveCardColor;
      }else{
        maleCard = inActiveCardColor;
      }
  }else{
    if(femaleCard == inActiveCardColor){
      femaleCard = activeCardColor;
      maleCard = inActiveCardColor;
    }
    else{
      femaleCard = inActiveCardColor;
    }
  }
}
*/
int sliderHeight = 180;
double weight = 74;
double age = 24;

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ReusableWidget(
                          colour: genderType == GenderType.male
                              ? Color(kActiveCardColor)
                              : Color(kInActiveCardColor),
                          childWidget: IconContent(
                            icons: FontAwesomeIcons.mars,
                            text: 'MALE',
                            colour: genderType == GenderType.male
                                ? Color(kActiveTextColor)
                                : Color(kInActiveTextColor),
                          ),
                          onPress: () {
                            setState(() {
                              //updateState(GenderType.male);
                              genderType = GenderType.male;
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ReusableWidget(
                    colour: genderType == GenderType.female
                        ? Color(kActiveCardColor)
                        : Color(kInActiveCardColor),
                    childWidget: IconContent(
                      icons: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                      colour: genderType == GenderType.female
                          ? Color(kActiveTextColor)
                          : Color(kInActiveTextColor),
                    ),
                    onPress: () {
                      setState(() {
                        //updateState(GenderType.male);
                        genderType = GenderType.female;
                      });
                    },
                  ),
                ))
              ],
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      child: ReusableWidget(
                    colour: Color(kInActiveCardColor),
                    childWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('HEIGHT', style: kStyleText),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              sliderHeight.toString(),
                              style: sliderTextStyle,
                            ),
                            Text('cm', style: kStyleText)
                          ],
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                          ),
                          child: Slider(
                            value: sliderHeight.toDouble(),
                            //inactiveColor: Color(0XFF8D8E98),
                            //activeColor: Color(0XFFEB1555),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                print(newValue.round());
                                sliderHeight = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  )))),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ReusableWidget(
                          colour: Color(kInActiveCardColor),
                          childWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'WEIGHT',
                                style: kStyleText,
                              ),
                              Text(
                                weight.toString(),
                                style: sliderTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: setRawMaterialButton(
                                        icon: FontAwesomeIcons.plus,
                                        onPress: () {
                                          setState(() {
                                            if (weight > 20 && weight < 150)
                                              weight++;
                                          });
                                        },
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: setRawMaterialButton(
                                        icon: FontAwesomeIcons.minus,
                                        onPress: () {
                                          setState(() {
                                            if (weight > 20 && weight < 150)
                                              weight--;
                                          });
                                        },
                                      ))
                                ],
                              )
                            ],
                          ),
                        ))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ReusableWidget(
                          colour: Color(kInActiveCardColor),
                          childWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'AGE',
                                style: kStyleText,
                              ),
                              Text(
                                age.toString(),
                                style: sliderTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: setRawMaterialButton(
                                        icon: FontAwesomeIcons.plus,
                                        onPress: () {
                                          setState(() {
                                            if (age > 10 && age < 100) age++;
                                          });
                                        },
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: setRawMaterialButton(
                                        icon: FontAwesomeIcons.minus,
                                        onPress: () {
                                          setState(() {
                                            if (age > 10 && age < 100) age--;
                                          });
                                        },
                                      ))
                                ],
                              )
                            ],
                          ),
                        ))),
              ],
            ),
          ),
          BottomContainerWidget(
            title: 'CALCULATE',
            onTapFunction: () {

              CalculatorBrain calc = CalculatorBrain(
                  weight: weight, height: sliderHeight.toDouble());

              String bmiResult = calc.calculateBMI();
              if(genderType==GenderType.male) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        ResultPage(
                          weightCaption: calc.weightCaption(bmi: 25).toUpperCase(),
                          weightResult: bmiResult,
                          weightComment: calc.weightSummary(bmi: 25),
                        )));
              }else if(genderType == GenderType.female){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        ResultPage(
                          weightCaption: calc.weightCaption(bmi: 24).toUpperCase(),
                          weightResult: bmiResult,
                          weightComment: calc.weightSummary(bmi: 24),
                        )));
              }
             /* double finalBMIResult = weight/pow(sliderHeight/100, 2);
              String bmi = finalBMIResult.toStringAsFixed(1);
              if(finalBMIResult >= 25 ){
                weightResult = 'overweight';
                weightComments = 'Higher than normal body weight';
              }else if(finalBMIResult >= 18){
                weightResult = 'normal';
                weightComments = 'Wow you are absolutely fit';
              }else{
                weightResult = 'underweight';
                weightComments = 'kuch khaya peeya karo janab';
              }*/


            },
          )
        ],
      ),
    );
  }
}
