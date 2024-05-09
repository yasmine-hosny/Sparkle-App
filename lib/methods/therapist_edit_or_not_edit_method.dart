import 'package:flutter/material.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';

void editOrNotEdit(
  BuildContext context, {
  required String newPassword,
  required String pass,
  required String newUserName,
  required String userName,
}) {
  if (newPassword.isNotEmpty || newUserName.isNotEmpty) {
    showSnackBar(context, 'Edited Successfully');
    if (newPassword.isNotEmpty) {
      pass = newPassword;
    }
    if (newUserName.isNotEmpty) {
      userName = newUserName;
    }
    Navigator.pop(context);
  } else if (newPassword.isEmpty && newUserName.isEmpty) {
    showSnackBar(context, 'Not edited of Your Info');
  }
}
