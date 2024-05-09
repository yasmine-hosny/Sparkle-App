import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Center(
        child: Text(
          message,
          style: TextStyle(),
        ),
      ),
    ),
  );
}
