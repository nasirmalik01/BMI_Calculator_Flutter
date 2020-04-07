import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  final IconData icons;
  final String text;
  final Color colour;

  IconContent({this.icons, this.text,this.colour});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style : TextStyle(
              fontSize: 18.0,
              color: colour,
          ),
        )
      ],
    );
  }
}
