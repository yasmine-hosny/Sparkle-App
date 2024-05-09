import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class AppName extends StatelessWidget {
  const AppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        'Sparkle',
        style: TextStyle(
            color: Colors.amber[300],
            fontSize: 36,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
