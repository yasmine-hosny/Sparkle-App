import 'package:flutter/material.dart';
import 'package:graduation_project/models/profile_model.dart';
import 'package:graduation_project/views/child_sign_up_view.dart';
import 'package:graduation_project/views/therapist_sign_up_view.dart';

class TherapistOrChildContainer extends StatelessWidget {
  TherapistOrChildContainer({super.key, required this.index});
  int index;
  //     required this.text, required this.viewId
  // final String text, viewId;
  List<ProfileModel> profileModel = [
    ProfileModel(
      text: 'Therapist',
      viewId: TherapistSignUpView.id,
      image: 'assets/images/images (4).jpg',
    ),
    ProfileModel(
      text: 'Caregaver',
      viewId: ChildSignUpView.id,
      image: 'assets/images/images.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, profileModel[index].viewId!),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  profileModel[index].image!,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  profileModel[index].text,
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
