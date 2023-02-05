import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/theme.dart';
import '../../../shared/atoms/custom_button.dart';
import '../../../shared/atoms/custom_text_field.dart';
import 'components/google_signin_button.dart';
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
              const SizedBox(height: 40.0),
              Center(
                child: Column(
                  children: [
                    const Text(
                      'ELFC',
                      style: TextStyle(
                        fontSize: 90,
                      ),
                    ),
                    Text(
                      'Eduardo Lopes FC',
                      style: headerText,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              Text(
                'Bem-vindo',
                style: headerText,
              ),
              const Text(
                'Entre com os seus dados',
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                controller: controller.emailController.value,
                label: 'Email',
              ),
              CustomTextField(
                controller: controller.emailController.value,
                label: 'Senha',
              ),
              const SizedBox(height: 20.0),
              CustomButtom(
                onTap: controller.login,
                label: 'Login',
              ),
              const SizedBox(height: 15.0),
              const GoogleSigninButton(),
            ],
          ),
        ),
      ),
    );
  }
}
