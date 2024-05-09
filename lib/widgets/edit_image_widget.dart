import 'package:flutter/material.dart';
import 'package:graduation_project/components/image_avatar_component.dart';
import 'package:graduation_project/constants.dart';

class EditImageWidget extends StatelessWidget {
  const EditImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ImageAvatar(),
        Positioned(
          bottom: -5,
          left: 55,
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundBottomBarColor,
            ),
            child: Icon(
              Icons.edit_outlined,
              size: 26,
            ),
          ),
        ),
      ],
    );
  }
}
