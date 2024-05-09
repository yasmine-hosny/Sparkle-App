import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/helper/show_snack_bar.dart';
import 'package:graduation_project/methods/therapist_edit_or_not_edit_method.dart';
import 'package:graduation_project/models/authentication_model.dart';
import 'package:graduation_project/models/therapist_info_model.dart';
import 'package:graduation_project/services/therapist_edit_profile_service.dart';
import 'package:graduation_project/widgets/bottom_bar_widget.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/edit_image_widget.dart';
import 'package:graduation_project/widgets/search_text_field_widget.dart';

class TherapistEditProfileView extends StatelessWidget {
  TherapistEditProfileView({super.key});
  static String id = 'TherapistEditProfileView';
  final TextEditingController newUserName = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TherapistInfoModel? therapistInfoModel =
    //     ModalRoute.of(context)!.settings.arguments as TherapistInfoModel? ??
    //         TherapistInfoModel(
    //             userName: 'ahmed',
    //             email: 'yasminehosny70@gmail.com',
    //             password: '000');

    return Scaffold(
      backgroundColor: backgroundScreenColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Edit Profile'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                  child: ListView(
                    children: [
                      Center(child: EditImageWidget()),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SearchTextFieldWidget(
                              hintText: userName.text,
                              prefixIcon: Icons.person,
                              myController: newUserName,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // SearchTextFieldWidget(
                            //   hintText: 'email',
                            //   prefixIcon: Icons.email,
                            // ),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            SearchTextFieldWidget(
                              hintText: pass.text,
                              prefixIcon: Icons.lock,
                              myController: newPassword,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Spacer(
                            flex: 8,
                          ),
                          CustomButton(
                            text: 'Cancel',
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          CustomButton(
                            text: 'Save',
                            onTap: () async {
                              try {
                                AuthenticationModel model =
                                    await TherapistEditProfileService()
                                        .therapistEditProfile(
                                            userName: newUserName.text.isEmpty
                                                ? userName.text
                                                : newUserName.text,
                                            email: gmail.text,
                                            password: newPassword.text.isEmpty
                                                ? pass.text
                                                : newPassword.text);
                                print(model.status);
                                print(model.message);
                                editOrNotEdit(
                                  context,
                                  newUserName: newUserName.text,
                                  newPassword: newPassword.text,
                                  userName: userName.text,
                                  pass: pass.text,
                                );
                              } catch (e) {
                                print(e.toString());
                              }
                            },
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          BottomBarWidget(),
        ],
      ),
    );
  }
}
