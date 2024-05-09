import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/models/therapist_info_model.dart';
import 'package:graduation_project/services/therapist_log_in_service.dart';
import 'package:graduation_project/views/email_forget_password_view.dart';
import 'package:graduation_project/views/therapist_edit_profile_view.dart';
import 'package:graduation_project/views/therapist_sign_up_view.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/custom_text_widget.dart';
import 'package:graduation_project/widgets/custom_text_form_field_widget.dart';
import 'package:graduation_project/views/therapist_home_view.dart';

class TherapistLogInView extends StatelessWidget {
  static String id = 'logId';

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Sparkle',
          style: TextStyle(
              color: Colors.amber[300],
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Form(
          key: formKey,
          child: Container(
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 35,
              ),
              child: ListView(
                children: [
                  const Text(
                    '   Welcome Back',
                    style: TextStyle(fontSize: 26, color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextFormField(
                    hintText: 'email',
                    preIcon: Icons.email,
                    visible: false,
                    myController: gmail,
                    errorText: 'Please Enter your email',
                  ),
                  CustomTextFormField(
                    hintText: 'password',
                    preIcon: Icons.lock,
                    visible: false,
                    myController: pass,
                    errorText: 'Please Enter your password',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EmailOfForgetPasswordView(
                                viewId: TherapistLogInView.id);
                          },
                        ),
                      );
                    },
                    child: const Text(
                      '   Forget password?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    text: 'Log in',
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          AuthenticationModel model =
                              await TherapistLogInService().therapistLogIn(
                                  email: gmail.text, password: pass.text);
                          print(model.status);
                          print(model.message);
                          if (model.status == 'success') {
                            Navigator.pushNamed(context, TherapistHomeView.id);
                          } else if (model.message ==
                              'Incorrect email or password') {
                            showSnackBar(
                                context, 'Incorrect email or password');
                          }
                        } catch (e) {
                          print(e.toString());
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomText(
                    firstText: 'Don\'t have an account?',
                    secondText: 'Sign Up',
                    onTap: () {
                      Navigator.pushNamed(context, TherapistSignUpView.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
