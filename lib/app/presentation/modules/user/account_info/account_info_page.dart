import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/shared/utilities/helppers.dart';
import '../../../components/components.dart';
import 'account_info_controller.dart';

class AccountInfoPage extends GetView<AccountInfoController> {
  const AccountInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserCard(
                userName: "Pedro Ramon",
                createdAt: "2",
                leading: true,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Informações de conta",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      "Altere dados relativos a sua conta",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: controller.emailController.value,
                      label: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    CustomTextField(
                      controller: controller.contactController.value,
                      label: "Contato",
                      maskFormatter: [maskPhone],
                      keyboardType: TextInputType.phone,
                    ),
                    Obx(
                      () => CustomTextField(
                        controller: controller.passwordController.value,
                        label: "Senha",
                        obscureText: !controller.passwordIsVisible.value,
                        suffixIcon: InkWell(
                          onTap: () => controller.passwordIsVisible.toggle(),
                          child: Visibility(
                            visible: controller.passwordIsVisible.value,
                            replacement: const CustomIcon(
                              icon: "eye_slash",
                              size: 24,
                            ),
                            child: const CustomIcon(
                              icon: "eye",
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
