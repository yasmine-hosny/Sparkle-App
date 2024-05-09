import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/views/child_story_view.dart';

class ChildContainerGame extends StatelessWidget {
  const ChildContainerGame({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ChildStoryView.id),
      child: Container(
        width: 140,
        height: 180,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/IMG_20230823_214506_530.jpg',
              width: 80,
              height: 80,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Story',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
