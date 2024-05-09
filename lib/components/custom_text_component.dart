import 'package:flutter/material.dart';

class CustomTextComponent extends StatelessWidget {
  CustomTextComponent({super.key, required this.text, required this.color});
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 50),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 32,
          color: color,
        ),
      ),
    );
  }
}
