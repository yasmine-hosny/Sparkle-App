import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/components/coins_container.dart';
import 'package:graduation_project/views/child_home_view.dart';
import 'package:graduation_project/widgets/child_container_story.dart';

class ChildStoryView extends StatelessWidget {
  const ChildStoryView({super.key});
  static String id = 'childStoryView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 36,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ChildHomeView.id),
                  icon: Icon(
                    Icons.home,
                    size: 38,
                  ),
                ),
                CoinsContainerComponent(),
              ],
            ),
            Image.asset(
              'assets/images/image.png',
              height: 180,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ChildContainerStoryWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
