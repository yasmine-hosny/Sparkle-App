import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/methods/print_response_method.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/services/child_log_in_service.dart';
import 'package:graduation_project/views/child_home_view.dart';
import 'package:graduation_project/views/email_forget_password_view.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/custom_text_form_field_widget.dart';
import 'package:graduation_project/widgets/custom_text_widget.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ChildLogInView extends StatefulWidget {
  ChildLogInView({super.key});
  static String id = 'childLogInViewId';

  @override
  State<ChildLogInView> createState() => _ChildLogInViewState();
}

class _ChildLogInViewState extends State<ChildLogInView> {
  final TextEditingController gmail = TextEditingController();

  final TextEditingController pass = TextEditingController();

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
                                  viewId: ChildLogInView.id);
                            },
                          ),
                        );
                      },
                      child: const Text(
                        '   Forget password?',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                      text: 'Log in',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});
                          try {
                            AuthenticationModel model =
                                await ChildLogInService().childLogIn(
                                    email: gmail.text, password: pass.text);
                            printResponse(model);
                            isLoading = false;
                            setState(() {});
                            if (model.status == 'success') {
                              Navigator.pushNamed(context, ChildHomeView.id);
                            } else if (model.message ==
                                'Incorrect username or password') {
                              showSnackBar(
                                  context, 'Incorrect username or password');
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
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
