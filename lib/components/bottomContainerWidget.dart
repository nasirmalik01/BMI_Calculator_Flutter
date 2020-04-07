import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomContainerWidget extends StatelessWidget {

  final String title;
  final Function onTapFunction;

  BottomContainerWidget({@required this.title,this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        color: Color(kBottomColorValue),
        height: kBottomWidgetWidth,
        //  margin: EdgeInsets.only(bottom: 10.0),
        //  padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              letterSpacing: 1.5,),
          ),
        ),
      ),
    );
  }
}
