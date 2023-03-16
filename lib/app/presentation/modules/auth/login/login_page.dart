import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/components/components.dart';
import 'components/components.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    Center(
                      child: Image(
                        image: AssetImage(
                          Get.isDarkMode
                              ? "assets/images/logo_white.png"
                              : "assets/images/logo_black.png",
                        ),
                        height: 130,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Bem vindo!',
                      style: Theme.of(context).textTheme.titleLarge,
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
                  style: Theme.of(context).textTheme.titleSmall,
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
