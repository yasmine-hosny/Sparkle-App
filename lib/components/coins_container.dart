import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoinsContainerComponent extends StatelessWidget {
  const CoinsContainerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.coins),
          Text('40'),
        ],
      ),
    );
  }
}
