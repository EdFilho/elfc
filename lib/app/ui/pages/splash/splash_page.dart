import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/shared/colors.dart';
import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.lightColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: const Center(
        child: Image(
          image: AssetImage(
            "assets/images/logo.png",
          ),
        ),
      ),
    );
  }
}
