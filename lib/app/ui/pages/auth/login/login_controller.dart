import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/configs/app_routes.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  void login() {
    Get.offAndToNamed(Routes.home);
  }
}
