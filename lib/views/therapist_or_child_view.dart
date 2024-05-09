import 'package:flutter/material.dart';
import 'package:graduation_project/views/child_sign_up_view.dart';
import 'package:graduation_project/views/therapist_sign_up_view.dart';
import 'package:graduation_project/widgets/therapist_or_child_container.dart';

class TherapistOrChildView extends StatelessWidget {
  static String id = 'therapistOrChildViewId';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sparkle',
          style: TextStyle(
              color: Colors.amber[300],
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              'assets/images/Untitled-design-18 22.webp',
              width: 400,
              height: 250,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Register As ...',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TherapistOrChildContainer(
            index: 0,
          ),
          const SizedBox(
            height: 30,
          ),
          TherapistOrChildContainer(
            index: 1,
          ),
        ],
      ),
    );
  }
}
