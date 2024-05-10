import 'package:fitness_app/config/constants.dart';
import 'package:flutter/material.dart';



class customText extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  const customText(
      {super.key,
      required this.label,
      this.labelColor = greytextColor,
      this.fontSize = 17});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: labelColor, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
