import 'package:flutter/material.dart';
import 'package:shopeasy/config/constants.dart';

class CategoryButton extends StatelessWidget {
  final String label;

  CategoryButton(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
