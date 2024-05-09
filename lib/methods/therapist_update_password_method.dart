import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/views/therapist_log_in_view.dart';

void therapistUpdatePasswordMethod(AuthenticationModel model,
    TextEditingController password, BuildContext context) {
  if (model.status == 'success') {
    pass = password;
    Navigator.pushNamed(context, TherapistLogInView.id);
  } else if (model.message == 'Email not found') {
    showSnackBar(context, 'Email not found');
  }
}
