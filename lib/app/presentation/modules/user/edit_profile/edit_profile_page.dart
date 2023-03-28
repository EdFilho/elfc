import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/atoms/custom_select.dart';
import '../../../components/components.dart';
import 'edit_profile_controller.dart';

class EditProfilePage extends GetView<EditProfileController> {
  const EditProfilePage({Key? key}) : super(key: key);

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
                      "Conta",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      "Altere alguns dos dados que você informou no cadastro",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: controller.nameController.value,
                      label: "Nome",
                    ),
                    CustomTextField(
                      controller: controller.lastNameController.value,
                      label: "Sobrenome",
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: CustomTextField(
                            controller: controller.birthdayDate.value,
                            label: 'Data de Nascimento',
                            suffixIcon: IconButton(
                              onPressed: () => controller.selectDate(context),
                              icon: const CustomIcon(
                                icon: "calendar",
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.5,
                                  color: Get.theme.primaryColor,
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.only(top: 15),
                            child: Obx(
                              () => CustomSelect(
                                options: controller.genders,
                                value: controller.selectedGender.value,
                                onChanged: (value) => controller.selectGender(value),
                              ),
                            ),
                          ),
                        ),
                      ],
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
