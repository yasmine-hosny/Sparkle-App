import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  CustomRadio({super.key});
  String group = "";
  String getGroup() {
    return group;
  }

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 'Girl',
            groupValue: widget.group,
            onChanged: (value) {
              setState(() {
                widget.group = value!;
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
            groupValue: widget.group,
            onChanged: (value) {
              setState(() {
                widget.group = value!;
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
