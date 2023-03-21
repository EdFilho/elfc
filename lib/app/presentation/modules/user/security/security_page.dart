import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/components/components.dart';
import 'security_controller.dart';

class SecurityPage extends GetView<SecurityController> {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserCard(
                userName: 'Pedro Ramon',
                createdAt: '2',
                leading: true,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Segurança',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Altere sua senha quando quiser.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    Obx(
                      () => CustomTextField(
                        controller: controller.currentPasswordController.value,
                        label: 'Senha atual',
                        obscureText: !controller.currentPassowrdIsVisible.value,
                        suffixIcon: InkWell(
                          onTap: () => controller.currentPassowrdIsVisible.toggle(),
                          child: Visibility(
                            visible: controller.currentPassowrdIsVisible.value,
                            replacement: const CustomIcon(
                              icon: 'eye_slash',
                              size: 24,
                            ),
                            child: const CustomIcon(
                              icon: 'eye',
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Obx(
                      () => CustomTextField(
                        controller: controller.newPasswordController.value,
                        label: 'Nova senha',
                        obscureText: !controller.newPasswordIsVisible.value,
                        suffixIcon: InkWell(
                          onTap: () => controller.newPasswordIsVisible.toggle(),
                          child: Visibility(
                            visible: controller.newPasswordIsVisible.value,
                            replacement: const CustomIcon(
                              icon: 'eye_slash',
                              size: 24,
                            ),
                            child: const CustomIcon(
                              icon: 'eye',
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomTextField(
                        controller: controller.confirmPasswordController.value,
                        label: 'Senha atual',
                        obscureText: !controller.confirmPasswordIsVisible.value,
                        suffixIcon: InkWell(
                          onTap: () => controller.confirmPasswordIsVisible.toggle(),
                          child: Visibility(
                            visible: controller.confirmPasswordIsVisible.value,
                            replacement: const CustomIcon(
                              icon: 'eye_slash',
                              size: 24,
                            ),
                            child: const CustomIcon(
                              icon: 'eye',
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    CustomButtom(
                      onTap: () => {},
                      label: 'Salvar',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
