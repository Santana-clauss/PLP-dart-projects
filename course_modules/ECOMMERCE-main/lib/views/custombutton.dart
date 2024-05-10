// ignore_for_file: sort_child_properties_last

import 'package:fitness_app/config/constants.dart';
import 'package:fitness_app/views/customtext.dart';
import 'package:flutter/material.dart';


class customButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  //final VoidCallback? onTap;
  const customButton({
    super.key,
    this.action,
    required this.buttonLabel,
    //this.onTap,
  });

  //final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: customText(
        label: buttonLabel,
        labelColor: Colors.white
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: orangeColor,
        elevation: 10,
        padding: const EdgeInsets.all(20),
        shadowColor: primaryColor
      ),
    );
  }
}
