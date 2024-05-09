import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/child_container_game.dart';

class TwoChildContainerGame extends StatelessWidget {
  const TwoChildContainerGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 1,
        ),
        ChildContainerGame(),
        Spacer(
          flex: 1,
        ),
        ChildContainerGame(),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
