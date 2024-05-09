import 'package:flutter/material.dart';
import 'package:graduation_project/components/custom_text_component.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/widgets/search_text_field_widget.dart';

class SearchContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 216, 221, 216),
            spreadRadius: 3,
          ),
        ],
        color: kPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 32,
          left: 32,
          top: 42,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'my patients',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 42,
            ),
            SearchTextFieldWidget(
              hintText: 'search',
              prefixIcon: Icons.search_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
