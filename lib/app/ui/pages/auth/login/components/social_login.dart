import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../login_controller.dart';

class SocialLogin extends GetView<LoginController> {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/google.svg'),
        const SizedBox(width: 16),
        SvgPicture.asset('assets/icons/facebook.svg'),
        const SizedBox(width: 16),
        SvgPicture.asset('assets/icons/apple.svg'),
      ],
    );
  }
}
