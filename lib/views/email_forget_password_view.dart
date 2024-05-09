import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/methods/print_response_method.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/services/forget_password_service.dart';
import 'package:graduation_project/views/child_log_in_view.dart';
import 'package:graduation_project/views/verification_code_view.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/custom_text_form_field_widget.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class EmailOfForgetPasswordView extends StatefulWidget {
  EmailOfForgetPasswordView({super.key, required this.viewId});
  String viewId;
  static String id = 'EmailOfForgetPasswordView';

  @override
  State<EmailOfForgetPasswordView> createState() =>
      _EmailOfForgetPasswordViewState();
}

class _EmailOfForgetPasswordViewState extends State<EmailOfForgetPasswordView> {
  final TextEditingController gmail = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Forgot Password'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            // vertical: 60,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/6430852.webp',
                    height: 210,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 450,
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
                            'Enter Your Email to \n    Change your password',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          CustomTextFormField(
                              errorText: 'Your email is required',
                              myController: gmail,
                              hintText: "Your email",
                              visible: false,
                              preIcon: Icons.email_rounded),
                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomButton(
                                  text: 'confirm',
                                  onTap: () async {
                                    String url;
                                    isLoading = true;
                                    setState(() {});
                                    if (widget.viewId == ChildLogInView.id) {
                                      url =
                                          "http://10.0.2.2/project/children/forgetpassword.php";
                                    } else {
                                      url =
                                          "http://10.0.2.2/project/doctor/forgetpassword.php";
                                    }
                                    if (formKey.currentState!.validate()) {
                                      AuthenticationModel model =
                                          await ForgetPasswordService()
                                              .forgetPassword(
                                        email: gmail.text,
                                        url: url,
                                      );
                                      isLoading = false;
                                      setState(() {});
                                      printResponse(model);
                                      emailForgetPassword(model, context);
                                    }
                                  }),
                              const SizedBox(
                                width: 20,
                              ),
                              CustomButton(
                                  text: 'Cancel',
                                  onTap: () {
                                    Navigator.pop(context);
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
      ),
    );
  }

  void emailForgetPassword(AuthenticationModel model, BuildContext context) {
    if (model.status == 'success') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return VerificationCodeView(
              verificationCode: model.verificationCode!,
              email: gmail.text,
            );
          },
        ),
      );
    } else if (model.message == 'Email not found') {
      showSnackBar(context, 'Email not found');
    }
  }
}
