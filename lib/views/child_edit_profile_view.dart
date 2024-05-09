import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/edit_image_widget.dart';
import 'package:graduation_project/widgets/search_text_field_widget.dart';

class ChildEditProfileView extends StatelessWidget {
  const ChildEditProfileView({super.key});
  static String id = 'ChildEditProfileView';
  @override
  Widget build(BuildContext context) {
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
                              hintText: 'Your Name',
                              prefixIcon: Icons.person,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SearchTextFieldWidget(
                              hintText: 'email',
                              prefixIcon: Icons.email,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SearchTextFieldWidget(
                              hintText: 'password',
                              prefixIcon: Icons.lock,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SearchTextFieldWidget(
                              hintText: 'birthday',
                              prefixIcon: Icons.calendar_month,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Spacer(
                            flex: 8,
                          ),
                          CustomButton(
                            text: 'Cancel',
                            onTap: () {},
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          CustomButton(
                            text: 'Save',
                            onTap: () {},
                          ),
                          Spacer(
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
        ],
      ),
    );
  }
}
