import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({super.key});

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  String? groupValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 'No',
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            }),
        Text(
          'Boy',
          style: TextStyle(
            fontSize: 24,
          ),
        )
      ],
    );
  }
}
