import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/models/child_info_model.dart';
import 'package:graduation_project/services/child_sign_up_service.dart';
import 'package:graduation_project/views/child_home_view.dart';
import 'package:graduation_project/views/child_log_in_view.dart';
import 'package:graduation_project/views/verification_code_view.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/custom_drop_down_menu_widget.dart';
import 'package:graduation_project/widgets/custom_text_form_field_widget.dart';
import 'package:graduation_project/widgets/custom_text_widget.dart';

class ChildSignUpView extends StatefulWidget {
  const ChildSignUpView({super.key});
  static String id = "childSignUpViewId";

  @override
  State<ChildSignUpView> createState() => _ChildSignUpViewState();
}

class _ChildSignUpViewState extends State<ChildSignUpView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController therapistName = TextEditingController();

  String? group;
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
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
          bottom: 30,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              // width: 360,
              // height: 750,
              decoration: BoxDecoration(
                color: lightColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 35,
                  bottom: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // const Text(
                      //   '   Create your account',
                      //   style: TextStyle(fontSize: 24, color: Colors.black87),
                      // ),
                      // const SizedBox(
                      //   height: 17,
                      // ),
                      CustomTextFormField(
                        hintText: 'child first name',
                        preIcon: Icons.person,
                        visible: false,
                        myController: firstName,
                        errorText: 'enter child first name',
                      ),
                      CustomTextFormField(
                        hintText: 'child last name',
                        preIcon: Icons.person,
                        visible: false,
                        myController: lastName,
                        errorText: 'enter child last name',
                      ),
                      CustomTextFormField(
                        hintText: 'email',
                        preIcon: Icons.email,
                        visible: false,
                        myController: email,
                        errorText: 'enter caregaver email',
                      ),
                      CustomTextFormField(
                        hintText: 'password',
                        preIcon: Icons.lock,
                        visible: false,
                        myController: password,
                        errorText: 'enter password',
                      ),
                      CustomTextFormField(
                        hintText: 'child birthday',
                        preIcon: Icons.calendar_month,
                        visible: false,
                        myController: birthday,
                        errorText: 'enter child birthday',
                      ),
                      CustomDropdownMenu(
                        myController: therapistName,
                        // errorText: 'this field is required',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 32,
                        ),
                        child: Row(
                          children: [
                            Radio(
                                value: 'Girl',
                                groupValue: group,
                                onChanged: (value) {
                                  setState(() {
                                    group = value!;
                                  });
                                }),
                            const Text(
                              'Girl',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            Radio(
                                value: 'Boy',
                                groupValue: group,
                                onChanged: (value) {
                                  setState(() {
                                    group = value!;
                                  });
                                }),
                            const Text(
                              'Boy',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                          text: 'Sign Up',
                          onTap: () async {
                            print(group);
                            // Navigator.pushNamed(context, ChildHomeView.id);
                            if (formKey.currentState!.validate()) {
                              AuthenticationModel model =
                                  await ChildSignUpService(
                                childInfoModel: ChildInfoModel(
                                    firstName: firstName.text,
                                    lastName: lastName.text,
                                    email: email.text,
                                    password: password.text,
                                    birthday: birthday.text,
                                    gender: group!,
                                    therapistName: therapistName.text),
                              ).childSignUp();
                              print(model.status);
                              print(model.message);
                              print(model.verificationCode);
                              print(therapistName.text);
                              if (model.status == 'success') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VerificationCodeView(
                                      verificationCode: model.verificationCode!,
                                      nextView: ChildHomeView.id,
                                    ),
                                  ),
                                );
                              } else if (model.message ==
                                  'Failed to send verification code') {
                                showSnackBar(context, 'No connection');
                              }
                            }
                          }),

                      const SizedBox(
                        height: 13,
                      ),
                      CustomText(
                        firstText: 'Already have account?',
                        secondText: 'Sign In',
                        onTap: () {
                          Navigator.pushNamed(context, ChildLogInView.id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
