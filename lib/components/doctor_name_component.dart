import 'package:flutter/material.dart';

class DoctorName extends StatelessWidget {
  const DoctorName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Yasmine Hosny',
      style: TextStyle(
        fontSize: 20,
        // fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
