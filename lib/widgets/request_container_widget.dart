import 'package:flutter/material.dart';
import 'package:graduation_project/components/custom_icon_component.dart';
import 'package:graduation_project/components/reject_accept_icon_component.dart';
import 'package:graduation_project/constants.dart';

class RequestContainerWidget extends StatelessWidget {
  const RequestContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 216, 221, 216),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/IMG_20230823_214506_530.jpg',
                  width: 70,
                  height: 60,
                ),
                borderRadius: BorderRadius.circular(200),
              ),
              Text(
                'yasmine hosny',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 50,
              ),
              RejectAcceptIconComponent(
                icon: Icons.delete_forever_outlined,
                text: 'reject',
              ),
              RejectAcceptIconComponent(
                icon: Icons.delete_forever_outlined,
                text: 'accept',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
