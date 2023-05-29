import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/shared/utilities/helppers.dart';
import '../../../../../components/components.dart';
import '../../register_controller.dart';
import '../social_signin.dart';

class EmailAndPassword extends GetView<RegisterController> {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.emailAndPassKey.value,
        child: Column(
          children: [
            Obx(
              () => CustomTextField(
                controller: controller.emailController.value,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (!isEmailValid(value!)) {
                    return 'Email inválido. Digite um email válido';
                  }
                  return null;
                },
                label: 'Email',
              ),
            ),
            Obx(
              () => CustomTextField(
                controller: controller.passwordController.value,
                label: 'Senha',
                validator: (value) {
                  if (!isPasswordValid(value!)) {
                    return 'A sua senha deve conter letras maiúsculas minúsculas, números e caracteres especiais';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 24.0),
            CustomButtom(
              onTap: controller.register,
              label: 'Cadastrar',
            ),
            const SizedBox(height: 32.0),
            Center(
              child: Text(
                'Ou',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: 32.0),
            const SocialSignin(),
          ],
        ),
      ),
    );
  }
}
