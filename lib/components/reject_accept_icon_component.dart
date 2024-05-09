import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RejectAcceptIconComponent extends StatelessWidget {
  RejectAcceptIconComponent(
      {super.key, required this.icon, required this.text});
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 27,
            ),
            // color: Colors.black,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
