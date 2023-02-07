import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/theme.dart';
import '../../../shared/atoms/custom_button.dart';
import '../../../shared/atoms/custom_text_field.dart';
import 'components/social_login.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

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
                onPressed: () => Get.back(),
              ),
              const SizedBox(height: 40.0),
              Center(
                child: Column(
                  children: [
                    const Center(
                      child: Image(
                        image: AssetImage(
                          "assets/images/logo.png",
                        ),
                        height: 110,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Bem vindo!',
                      style: headerText,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              CustomTextField(
                controller: controller.emailController.value,
                label: 'Email',
              ),
              CustomTextField(
                controller: controller.passwordController.value,
                label: 'Senha',
              ),
              TextButton(
                child: const Text('Esqueci minha senha'),
                onPressed: () {},
              ),
              const SizedBox(height: 24.0),
              CustomButtom(
                onTap: controller.login,
                label: 'Entrar',
              ),
              const SizedBox(height: 32.0),
              Center(
                child: Text(
                  'Ou',
                  style: headline2,
                ),
              ),
              const SizedBox(height: 32.0),
              const SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
