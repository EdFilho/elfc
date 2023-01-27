import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_controller.dart';

class ProfilePage extends GetView<HomeController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage("assets/images/user.png"),
          ),
        ],
      ),
    );
  }
}
