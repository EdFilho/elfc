import 'package:elfc/app/core/shared/enums/menu_option_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/components/components.dart';
import '../../../home_controller.dart';

class ProfilePage extends GetView<HomeController> {
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
                onTap: () => Get.changeThemeMode(
                  context.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                ),
                switcherOn: context.isDarkMode,
                type: MenuOptionType.switcher,
              ),
              MenuOptions(
                label: "Notificações",
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
