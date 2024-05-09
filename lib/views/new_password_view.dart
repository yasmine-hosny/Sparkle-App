import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/methods/print_response_method.dart';
import 'package:graduation_project/methods/therapist_update_password_method.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/services/update_password_service.dart';
import 'package:graduation_project/views/therapist_log_in_view.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/custom_text_form_field_widget.dart';

class NewPasswordView extends StatelessWidget {
  String gmail;
  NewPasswordView({super.key, required this.gmail});
  static String id = 'ForgetPasswordView';
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Create New Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/download.png',
                  height: 190,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 440,
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 30,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Please Enter New Password',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        CustomTextFormField(
                            errorText: 'Please enter your new password',
                            myController: password,
                            hintText: "New Password",
                            visible: false,
                            preIcon: Icons.lock),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomButton(
                                text: 'confirm',
                                onTap: () async {
                                  if (formKey.currentState!.validate()) {
                                    try {
                                      AuthenticationModel model =
                                          await UpdatePasswordService()
                                              .updatePassword(
                                                  newPassword: password.text,
                                                  email: gmail);
                                      print(gmail);
                                      printResponse(model);
                                      therapistUpdatePasswordMethod(
                                          model, password, context);
                                    } catch (e) {
                                      print(e.toString());
                                    }
                                  }
                                }),
                            const SizedBox(
                              width: 15,
                            ),
                            CustomButton(
                                text: 'Cancel',
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, TherapistLogInView.id);
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
