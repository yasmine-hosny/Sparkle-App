import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/widgets/bottom_bar_widget.dart';
import 'package:graduation_project/widgets/child_container_widget.dart';
import 'package:graduation_project/widgets/search_container_widget.dart';

class TherapistHomeView extends StatelessWidget {
  @override
  static String id = 'homeScreenId';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchContainerWidget(),
            SizedBox(
              height: 475,
              child: ListView.builder(
                  // shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ChildContainerWidget();
                  }),
            ),
            SizedBox(
              height: 45,
            ),
            BottomBarWidget()
          ],
        ),
      ),
    );
  }
}
