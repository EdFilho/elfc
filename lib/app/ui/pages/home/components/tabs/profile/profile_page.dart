import 'package:elfc/app/core/configs/app_routes.dart';
import 'package:elfc/app/core/shared/enums/menu_option_type.dart';
import 'package:elfc/app/ui/pages/home/components/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/components/components.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserCard(
                userName: "Pedro Ramon",
                birthDate: "28/07/1997",
                createdAt: "2",
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  "Conta",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              MenuOptions(
                label: "Editar perfil",
                onTap: () => Get.toNamed(Routes.editProfile),
              ),
              MenuOptions(
                label: "Informações pessoais",
                onTap: () => {},
              ),
              MenuOptions(
                label: "Financeiro",
                onTap: () => {},
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  "Configurações",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              MenuOptions(
                label: "Modo escuro",
                onTap: () => controller.changeThemeMode(),
                switcherOn: context.isDarkMode,
                type: MenuOptionType.switcher,
              ),
              MenuOptions(
                label: "Notificações",
                onTap: () => {},
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  "Conta",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              MenuOptions(
                label: "Política e termos",
                onTap: () => {},
              ),
              MenuOptions(
                label: "FAQ",
                onTap: () => {},
              ),
              MenuOptions(
                label: "Suporte",
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
