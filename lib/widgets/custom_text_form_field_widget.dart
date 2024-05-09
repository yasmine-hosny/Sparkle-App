import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData preIcon;
  final bool visible;
  TextEditingController? myController = TextEditingController();
  String? errorText;
  TextInputType? typeData;

  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.preIcon,
    required this.visible,
    @required this.typeData,
    @required this.myController,
    @required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: TextFormField(
        controller: myController,
        obscureText: visible,
        keyboardType: typeData,
        validator: (data) {
          if (data == null || data.isEmpty) {
            return errorText;
          } else if (!data.contains('@gmail.com') &&
              !EmailValidator.validate(data) &&
              hintText == 'email') {
            return "Please enter a valid email";
          }
          //  else if (data.length < 8 && hintText == 'password') {
          //   return "at least 8 characters";
          // }

          return null;
        },
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(horizontal: 1),
          // errorText: v,
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          prefixIcon: Icon(
            preIcon,
            color: Colors.black,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black26,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: darkColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
