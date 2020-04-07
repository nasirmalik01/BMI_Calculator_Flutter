import 'package:flutter/material.dart';
import 'screens/BMICalculator.dart';
import 'screens/resultPage.dart';


void main() => (runApp(bmiCalculator()));

class bmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          accentColor: Colors.purple,
          scaffoldBackgroundColor: Color(0xFF0A0E21),
         /* textTheme: TextTheme(
              body1: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          )
          )*/),
      /*theme: ThemeData
         (
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Colors.purple,
          textTheme: TextTheme(
              body1: TextStyle(color: Colors.white),
              )*/



      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
          ),
        ),
        body: BMICalculator(),


       /* floatingActionButton: Theme(
          data: ThemeData(
            accentColor: Colors.red,
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
*/

      ),
    );
  }
}
