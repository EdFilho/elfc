import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entities/entities.dart';
import '../../../../domain/usecases/usecases.dart';
import '../../../app_routes.dart';
import '../../../controllers/auth_controller.dart';

class LoginController extends GetxController {
  final LoginUsecase loginUsecase;
  final AuthController authController;

  LoginController({
    required this.loginUsecase,
    required this.authController,
  });

  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool passwordIsVisible = false.obs;
  RxBool isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    AccountEntity? account = await loginUsecase.call(
      emailController.value.text,
      passwordController.value.text,
    );
    if (account != null) {
      await authController.setAccount(account);
      Get.offAllNamed(Routes.home);
    }
    isLoading.value = false;
  }
}
