import 'package:bmi_calculator_praktikum_o/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key key,@required this.icon, @required this.label}) 
  : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
    icon,
    size: 70.0,
    ),
    SizedBox(
      height: 15.0,
    ),
    Text(
      '$label', 
    style: kLabelStyle,
    ),
    ],  
    );
  }
}