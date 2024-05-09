import 'package:flutter/material.dart';
import 'package:graduation_project/components/custom_text_component.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/widgets/bottom_bar_widget.dart';
import 'package:graduation_project/widgets/report_container_widget.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});
  static String id = "reportScreenId";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextComponent(text: 'Reports', color: Colors.black),
          ReportContainerWidget(),
          ReportContainerWidget(),
          SizedBox(
            height: 368,
          ),
          BottomBarWidget(),
        ],
      ),
    );
  }
}
