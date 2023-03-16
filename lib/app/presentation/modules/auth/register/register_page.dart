import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
                onPressed: controller.back,
              ),
              const SizedBox(height: 40.0),
              Center(
                child: Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage(
                          Get.isDarkMode
                              ? "assets/images/logo_white.png"
                              : "assets/images/logo_black.png",
                        ),
                        height: 110,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Bem vindo!',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Text(
                      'Faça sua conta e entre no nosso time!',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Obx(
                () => controller.steps[controller.indexScreen.value],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
