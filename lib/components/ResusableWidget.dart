import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final Color colour;
  final Widget childWidget;
  final Function onPress;

  ReusableWidget({@required this.colour, this.childWidget,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
            decoration: BoxDecoration(
                color: colour,
                borderRadius: BorderRadius.circular(10.0)),
            child: childWidget,
          ),
    );
  }
}
