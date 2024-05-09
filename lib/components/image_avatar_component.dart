import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 52,
      backgroundColor: backgroundBottomBarColor,
      child: CircleAvatar(
        radius: 50,
        backgroundImage:
            AssetImage('assets/images/IMG_20230823_214506_530.jpg'),
      ),
    );
  }
}
