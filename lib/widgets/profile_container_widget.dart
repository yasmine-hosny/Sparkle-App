import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/methods/navigator_profile_method.dart';
import 'package:graduation_project/models/profile_model.dart';
import 'package:graduation_project/views/therapist_edit_profile_view.dart';

class ProfileContainerWidget extends StatelessWidget {
  ProfileContainerWidget({super.key, required this.profileModel});
  final ProfileModel profileModel;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 22,
        right: 22,
        bottom: 12,
      ),
      child: GestureDetector(
        onTap: () {
          if (profileModel.viewId != null) {
            Navigator.pushNamed(context, profileModel.viewId!);
          } else {}
          // navigatorProfileMethod(context, profileModel.text);
          // profileModel.onTap(context, profileModel.nextViewId);
        },
        child: Container(
          width: 370,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(profileModel.preIcon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  profileModel.text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
                // Switch(
                //   value: isSwitched,
                //   onChanged: (value) {},
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
