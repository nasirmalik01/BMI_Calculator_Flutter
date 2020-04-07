import 'dart:math';

import 'package:flutter/cupertino.dart';


class CalculatorBrain {

  double weight;
  double height;
  double finalBMIResult;

  CalculatorBrain({@required this.weight,@required this.height});

  String calculateBMI() {
    finalBMIResult = weight / pow(height/100, 2);
    String bmi = finalBMIResult.toStringAsFixed(1);
    return bmi;
  }

  String weightCaption({int bmi}) {
    if(finalBMIResult >= bmi ){
      return 'overweight';
    }else if(finalBMIResult >= (bmi-8)){
      return 'normal';
    }else{
       return 'underweight';
    }
  }

  String weightSummary({int bmi}){
    if(finalBMIResult >= bmi ){
      return 'You have a higher than normal body weight. Try to exercise more';
    }else if(finalBMIResult >= (bmi-8)){
      return 'You have a normal body weight. Good job';
    }else{
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }


}