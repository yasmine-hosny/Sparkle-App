import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/methods/get_profile_data.dart';
import 'package:graduation_project/models/profile_model.dart';
import 'package:graduation_project/views/Child_report_view.dart';
import 'package:graduation_project/views/change_therapist_view.dart';
import 'package:graduation_project/views/child_edit_profile_view.dart';
import 'package:graduation_project/views/contact_us_view.dart';
import 'package:graduation_project/widgets/profile_container_widget.dart';
import 'package:graduation_project/widgets/profile_image_widget.dart';

class ChildSettingsView extends StatelessWidget {
  static String id = "ChildSettingsView";
  List<ProfileModel> itemsData = [
    ProfileModel(
      preIcon: Icons.mode_edit_outline_rounded,
      text: 'Edit child profile',
      viewId: ChildEditProfileView.id,
    ),
    ProfileModel(
      preIcon: FontAwesomeIcons.userAlt,
      text: 'Change your therapist',
      viewId: ChangeTherapistView.id,
    ),
    ProfileModel(
      preIcon: Icons.receipt_long_rounded,
      text: 'Child report',
      viewId: ChildReportView.id,
    ),
    // ProfileModel(
    //   preIcon: Icons.dark_mode,
    //   text: 'Dark Mode',
    // ),
    // ProfileModel(
    //   preIcon: Icons.language_rounded,
    //   text: 'Language',
    // ),
    ProfileModel(
      preIcon: Icons.contact_mail_rounded,
      text: 'Contact us',
      viewId: ContactUsView.id,
    ),
    // ProfileModel(
    //   preIcon: Icons.logout_rounded,
    //   text: 'Logout',
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Column(
        children: [
          ProfileImageWidget(),
          SizedBox(
            height: 20,
          ),
          ProfileContainerWidget(profileModel: itemsData[0]),
          ProfileContainerWidget(profileModel: itemsData[1]),
          ProfileContainerWidget(profileModel: itemsData[2]),
          ProfileContainerWidget(profileModel: itemsData[3]),
        ],
      ),
    );
  }
}
