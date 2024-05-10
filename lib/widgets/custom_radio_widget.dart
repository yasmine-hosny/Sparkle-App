import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({super.key});

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  String? group;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 'Girl',
            groupValue: group,
            onChanged: (value) {
              setState(() {
                group = value!;
              });
            }),
        const Text(
          'Girl',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          width: 60,
        ),
        Radio(
            value: 'Boy',
            groupValue: group,
            onChanged: (value) {
              setState(() {
                group = value!;
              });
            }),
        const Text(
          'Boy',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
