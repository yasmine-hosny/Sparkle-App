import 'package:flutter/material.dart';

class CustomIconComponent extends StatelessWidget {
  CustomIconComponent(
      {required this.icon, required this.text, required this.id});
  IconData icon;
  String text, id;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, id),
      child: Container(
        child: Column(
          children: [
            Icon(
              icon,
              size: 27,
              color: Colors.black,
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              '$text',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
