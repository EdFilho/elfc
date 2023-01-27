import 'package:elfc/app/core/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/house-solid.svg',
          color: AppColors.lightColor,
        ),
      ),
    );
  }
}
