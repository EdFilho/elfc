import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/shared/enums/enums.dart';
import '../../../app_routes.dart';
import '../../../shared/components/components.dart';
import 'profile_settings_controller.dart';

class ProfileSettingsPage extends GetView<ProfileSettingsController> {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserCard(
              userName: 'Pedro Ramon',
              createdAt: '2',
              leading: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Text(
                        'Conta',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    MenuOptions(
                      label: 'Editar perfil',
                      onTap: () => Get.toNamed(Routes.editProfile),
                    ),
                    MenuOptions(
                      label: 'Informações de conta',
                      onTap: () => Get.toNamed(Routes.accountInfo),
                    ),
                    MenuOptions(
                      label: 'Segurança',
                      onTap: () => Get.toNamed(Routes.security),
                    ),
                    MenuOptions(
                      label: 'Financeiro',
                      onTap: () => Get.toNamed(Routes.finance),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Text(
                        'Configurações',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    MenuOptions(
                      label: 'Modo escuro',
                      onTap: () => controller.changeThemeMode(),
                      switcherOn: context.isDarkMode,
                      type: MenuOptionType.switcher,
                    ),
                    MenuOptions(
                      label: 'Notificações',
                      onTap: () => {},
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Text(
                        'Conta',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    MenuOptions(
                      label: 'Política e termos',
                      onTap: () => {},
                    ),
                    MenuOptions(
                      label: 'FAQ',
                      onTap: () => {},
                    ),
                    MenuOptions(
                      label: 'Suporte',
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
