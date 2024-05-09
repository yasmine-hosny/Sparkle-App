import 'package:flutter/material.dart';
import 'package:graduation_project/components/custom_icon_component.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/views/therapist_home_view.dart';
import 'package:graduation_project/views/therapist_profile_view.dart';
import 'package:graduation_project/views/requests_screen.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundBottomBarColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 216, 221, 216),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
          bottom: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconComponent(
              icon: Icons.home_outlined,
              text: 'home',
              id: TherapistHomeView.id,
            ),
            CustomIconComponent(
              icon: Icons.person_add_alt_1_outlined,
              text: 'requests',
              id: RequestsScreen.id,
            ),
            CustomIconComponent(
              icon: Icons.person_outline_rounded,
              text: 'profile',
              id: TherapistProfileView.id,
            ),
          ],
        ),
      ),
    );
  }
}
