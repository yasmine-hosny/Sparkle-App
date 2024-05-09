import 'package:flutter/material.dart';
import 'package:graduation_project/components/custom_text_component.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/widgets/bottom_bar_widget.dart';
import 'package:graduation_project/widgets/request_container_widget.dart';

class RequestsScreen extends StatelessWidget {
  static String id = "requestsScreenId";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Column(
        children: [
          CustomTextComponent(text: 'New Requests', color: Colors.black),
          SizedBox(
            height: 18,
          ),
          RequestContainerWidget(),
          RequestContainerWidget(),
          RequestContainerWidget(),
          SizedBox(
            height: 262,
          ),
          BottomBarWidget(),
        ],
      ),
    );
  }
}
