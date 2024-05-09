import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const CustomTextField(
      {super.key, required this.hintText, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: TextField(
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(horizontal: 1),
          isDense: true,
          prefixIcon: Icon(
            icon,
            // color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 199, 197, 197),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 197, 197),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
