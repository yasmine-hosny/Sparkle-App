import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/methods/get_profile_data.dart';
import 'package:graduation_project/models/profile_model.dart';
import 'package:graduation_project/views/contact_us_view.dart';
import 'package:graduation_project/views/therapist_edit_profile_view.dart';
import 'package:graduation_project/widgets/bottom_bar_widget.dart';
import 'package:graduation_project/widgets/profile_container_widget.dart';
import 'package:graduation_project/widgets/profile_image_widget.dart';

class TherapistProfileView extends StatelessWidget {
  static String id = "TherapistProfileView";
  List<ProfileModel> itemsData = [
    ProfileModel(
      preIcon: Icons.mode_edit_outline_rounded,
      text: 'Edit profile',
      viewId: TherapistEditProfileView.id,
    ),
    ProfileModel(
      preIcon: Icons.dark_mode,
      text: 'Dark Mode',
    ),
    ProfileModel(
      preIcon: Icons.language_rounded,
      text: 'Language',
    ),
    ProfileModel(
      preIcon: Icons.contact_mail_rounded,
      text: 'Contact us',
      viewId: ContactUsView.id,
    ),
    ProfileModel(
      preIcon: Icons.logout_rounded,
      text: 'Logout',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileImageWidget(),
          SizedBox(
            height: 16,
          ),
          ProfileContainerWidget(profileModel: itemsData[0]),
          // ProfileContainerWidget(profileModel: itemsData[1]),
          // ProfileContainerWidget(profileModel: itemsData[2]),
          ProfileContainerWidget(profileModel: itemsData[3]),
          ProfileContainerWidget(profileModel: itemsData[4]),
          SizedBox(
            height: 40,
          ),
          BottomBarWidget(),
        ],
      ),
    );
  }
}
