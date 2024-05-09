import 'package:flutter/material.dart';
import 'package:graduation_project/components/app_name_component.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/models/therapist_info_model.dart';
import 'package:graduation_project/services/therapist_sign_up_service.dart';
import 'package:graduation_project/views/therapist_edit_profile_view.dart';
import 'package:graduation_project/views/therapist_home_view.dart';
import 'package:graduation_project/views/verification_code_view.dart';
import 'package:graduation_project/widgets/custom_text_widget.dart';
import 'package:graduation_project/widgets/custom_text_form_field_widget.dart';
import 'package:graduation_project/views/therapist_log_in_view.dart';
import '../widgets/custom_button_widget.dart';

class TherapistSignUpView extends StatefulWidget {
  TherapistSignUpView({super.key});
  static String id = 'doctorSignUpId';

  @override
  State<TherapistSignUpView> createState() => _TherapistSignUpViewState();
}

class _TherapistSignUpViewState extends State<TherapistSignUpView> {
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
      backgroundColor: Colors.white,
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
                    '   Create your account',
                    style: TextStyle(fontSize: 24, color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextFormField(
                    hintText: 'UserName',
                    preIcon: Icons.person,
                    visible: false,
                    myController: userName,
                    errorText: 'Please enter your name',
                  ),
                  CustomTextFormField(
                    hintText: 'email',
                    preIcon: Icons.email,
                    visible: false,
                    myController: gmail,
                    errorText: 'Please enter your email',
                  ),
                  CustomTextFormField(
                    hintText: 'password',
                    preIcon: Icons.lock,
                    visible: true,
                    myController: pass,
                    errorText: 'Please enter password',
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomButton(
                    text: 'Sign Up',
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          AuthenticationModel model =
                              await TherapistSignUpService().therapistSignUp(
                            userName: userName.text,
                            gmail: gmail.text,
                            pass: pass.text,
                          );
                          print(model.status);
                          print(model.message);
                          print(model.verificationCode);
                          if (model.status == 'success') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerificationCodeView(
                                    verificationCode: model.verificationCode!,
                                    nextView: TherapistHomeView.id),
                              ),
                            );
                          } else if (model.message == 'Email already exists') {
                            showSnackBar(context, 'Email already exists');
                          } else if (model.message ==
                              'Failed to send verification code') {
                            showSnackBar(
                                context, 'Failed to send verification code');
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
                    firstText: 'Already have account?',
                    secondText: 'Sign In',
                    onTap: () {
                      Navigator.pushNamed(context, TherapistLogInView.id);
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
