import 'package:flutter/material.dart';
import 'package:graduation_project/components/coins_container.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/views/child_settings_view.dart';
import 'package:graduation_project/widgets/two_child_container_game.dart';

class ChildHomeView extends StatelessWidget {
  const ChildHomeView({super.key});

  static String id = 'childHomeViewId';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 280,
                decoration: const BoxDecoration(
                  color: lightColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 200,
                    top: 130,
                  ),
                  child: Text(
                    'hallo \nahmed',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                // left: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ChildSettingsView.id);
                  },
                  icon: const Icon(Icons.settings),
                ),
              ),
              const Positioned(
                top: 35,
                left: 360,
                child: CoinsContainerComponent(),
              ),
              // Positioned(
              //   top: 80,
              //   child: Image.asset(
              //     'assets/images/image.png',
              //     color: const Color.fromARGB(255, 0, 143, 0),
              //     width: 200,
              //     height: 300,
              //   ),
              // ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          TwoChildContainerGame(),
          const SizedBox(
            height: 20,
          ),
          TwoChildContainerGame(),
        ],
      ),
    );
  }
}
