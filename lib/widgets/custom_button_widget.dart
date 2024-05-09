import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onTap});
  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: darkColor,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
