import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/atoms/custom_button.dart';
import 'onboarding_controller.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({Key? key}) : super(key: key);

  get headerText => null;

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
              const SizedBox(height: 80.0),
              Center(
                child: Image(
                  image: AssetImage(
                    Get.isDarkMode
                        ? "assets/images/logo_white.png"
                        : "assets/images/logo_black.png",
                  ),
                  height: 280,
                ),
              ),
              const SizedBox(height: 80.0),
              CustomButtom(
                onTap: controller.toLogin,
                label: 'Já tenho conta',
              ),
              const SizedBox(height: 15.0),
              CustomButtom(
                onTap: controller.toRegister,
                label: 'Cadastrar-se',
                type: 'seccond',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
