import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/views/report_screen.dart';

class ChildContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromARGB(255, 251, 251, 251),
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
                    width: 100,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, ReportScreen.id),
                    child: Column(
                      children: [
                        Icon(
                          Icons.receipt_long_outlined,
                        ),
                        Text('report')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
