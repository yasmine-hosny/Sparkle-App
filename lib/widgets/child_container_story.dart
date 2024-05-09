import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChildContainerStoryWidget extends StatelessWidget {
  const ChildContainerStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage('assets/images/IMG_20230823_214506_530.jpg'),
              ),
              // Image.asset(
              //   'assets/images/IMG_20230823_214506_530.jpg',
              //   width: 65,
              //   height: 70,
              // ),
              SizedBox(
                width: 18,
              ),
              Text(
                'story name',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
