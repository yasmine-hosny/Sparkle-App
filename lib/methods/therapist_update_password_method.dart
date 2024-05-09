import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/views/therapist_log_in_view.dart';

void updatePasswordMethod(AuthenticationModel model,
    TextEditingController password, BuildContext context, String backViewId) {
  if (model.status == 'success') {
    pass = password;
    Navigator.pushNamed(context, backViewId);
  } else if (model.message == 'Email not found') {
    showSnackBar(context, 'Email not found');
  }
}
