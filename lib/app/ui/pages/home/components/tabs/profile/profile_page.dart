import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/configs/app_routes.dart';
import '../../../../../../core/shared/enums/enums.dart';
import '../../../../../shared/components/components.dart';
import '../tabs.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserCard(
              userName: "Pedro Ramon",
              createdAt: "2",
              settings: () => Get.toNamed(Routes.profileSettings),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 16),
                    child: Text(
                      "Galeria",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.amber,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.blueGrey,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.orange,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.red,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.blueGrey,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.cyanAccent,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.brown,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.pink[200],
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.amberAccent,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.deepPurple,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
