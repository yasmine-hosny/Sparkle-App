import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/widgets/custom_button_widget.dart';
import 'package:graduation_project/widgets/custom_drop_down_menu_widget.dart';
import 'package:graduation_project/widgets/search_text_field_widget.dart';

class ChangeTherapistView extends StatelessWidget {
  const ChangeTherapistView({super.key});
  static String id = 'ChangeTherapistView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Change Your Therapist'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          height: 600,
          decoration: BoxDecoration(
            color: lightColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 20,
              top: 60,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropdownMenu(),
                  const SizedBox(
                    height: 300,
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
    );
  }
}
