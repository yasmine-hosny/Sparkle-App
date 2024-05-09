import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(255, 206, 9, 9),
      thickness: 5,
      height: 15,
      // indent: 15,
      // endIndent: 15,
    );
  }
}
