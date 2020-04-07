import 'package:bmi_calculator/components/ResusableWidget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/bottomContainerWidget.dart';
class ResultPage extends StatelessWidget {
  String weightCaption;
  String weightResult ;
  String weightComment;
  ResultPage({@required this.weightCaption,@required  this.weightResult,@required this.weightComment});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
          ),
        ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: Container(
                 child: Text(
                   'Your Results',
                   style: sliderTextStyle,
                 ),
                 alignment: Alignment.bottomLeft,
               ),
             ),
           ),
           Expanded(
             flex:6,
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: ReusableWidget(
                  colour: Color(kActiveCardColor),
                 childWidget: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text(
                       weightCaption,
                       style: kWeightCaption,
                      textAlign: TextAlign.center,
                     ),


                     Center(
                       child: Text(
                         weightResult,
                         style: kWeightResult,
                       ),
                     ),

                     Text(
                      weightComment,
                       style: kWeightComments,
                       textAlign: TextAlign.center,
                     )
                   ],
                 ),
               ),
             ),
           ),
           Expanded(
             flex: 1,
             child: BottomContainerWidget(
                title: 'RE-CALCULATE',
                onTapFunction: (){
                  Navigator.pop(context);
                },
             )
           ),
         ],
       ),
      ),
    );
  }
}
