import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class ReportContainerWidget extends StatelessWidget {
  const ReportContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 216, 221, 216),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.receipt_long_rounded,
                size: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    Text(
                      'amal ahmed',
                      style: TextStyle(fontSize: 18),
                    ),
                    // Text(
                    //   '"report"',
                    //   style: TextStyle(fontSize: 18),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Text(
                    '3/3/2024',
                    style: TextStyle(fontSize: 18),
                  ),
                  // SizedBox(
                  //   height: 4,
                  // ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      size: 35,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
