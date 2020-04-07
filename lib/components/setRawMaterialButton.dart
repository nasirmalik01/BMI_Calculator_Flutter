import 'package:flutter/material.dart';

class setRawMaterialButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  setRawMaterialButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 8.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
