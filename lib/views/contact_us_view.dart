import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/methods/print_response_method.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/services/contact_us_service.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ContactUsView extends StatefulWidget {
  ContactUsView({super.key});
  static String id = 'ContactUsView';

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  final TextEditingController email = TextEditingController();

  final TextEditingController message = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'Contact US',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 30,
            bottom: 50,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
              ),
              child: ListView(
                children: [
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 1),
                      // isDense: true,
                      hintText: gmail.text,
                      prefixIcon: Icon(Icons.email),
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 121, 119, 119),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    // minLines: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 250,
                    child: TextFormField(
                      controller: message,
                      expands: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'How can we help?',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 0.1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      // minLines: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      if (!email.text.contains('@gmail.com') &&
                          !EmailValidator.validate(email.text) &&
                          email.text.isNotEmpty) {
                        showSnackBar(context, "Please enter a valid email");
                      } else {
                        try {
                          AuthenticationModel model =
                              await ContactUsService().contactUs(
                            email: email.text.isEmpty ? gmail.text : email.text,
                            message: message.text,
                          );
                          isLoading = false;
                          setState(() {});
                          if (message.text.isEmpty) {
                            showSnackBar(context, 'enter message, please');
                          } else if (model.status == 'success') {
                            showSnackBar(context,
                                'Your message has been received. Thank you.');
                            Navigator.pop(context);
                          } else {
                            showSnackBar(context, model.message);
                          }
                          printResponse(model);
                        } catch (e) {
                          print(e.toString);
                        }
                      }
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(40, 50),
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
}
