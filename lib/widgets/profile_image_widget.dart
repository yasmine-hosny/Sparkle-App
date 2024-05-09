import 'package:flutter/material.dart';
import 'package:graduation_project/components/doctor_name_component.dart';
import 'package:graduation_project/components/image_avatar_component.dart';
import 'package:graduation_project/constants.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 270,
      color: Colors.amber[200],
      child: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: [
            ImageAvatar(),
            SizedBox(
              height: 16,
            ),
            DoctorName(),
          ],
        ),
      ),
    );
  }
}
