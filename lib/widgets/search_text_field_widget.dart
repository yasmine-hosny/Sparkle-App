import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class SearchTextFieldWidget extends StatelessWidget {
  String hintText;
  IconData prefixIcon;
  TextEditingController? myController;
  SearchTextFieldWidget({
    required this.hintText,
    required this.prefixIcon,
    @required this.myController,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 1),
        // isDense: true,
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 121, 119, 119),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
