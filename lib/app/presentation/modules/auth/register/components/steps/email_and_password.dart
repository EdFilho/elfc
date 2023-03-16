import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/components/components.dart';
import '../../register_controller.dart';
import '../social_signin.dart';

class EmailAndPassword extends GetView<RegisterController> {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
