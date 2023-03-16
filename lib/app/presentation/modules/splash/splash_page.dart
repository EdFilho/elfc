import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Image(
            image: AssetImage(
              Get.isDarkMode
                  ? "assets/images/logo_white.png"
                  : "assets/images/logo_black.png",
            ),
          ),
        ),
      ),
    );
  }
}
