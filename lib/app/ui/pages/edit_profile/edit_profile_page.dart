import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import './edit_profile_controller.dart';

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
                birthDate: "28/07/1997",
                createdAt: "2",
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Conta",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
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
                              () => DropdownButton(
                                value: controller.selectedGender.value,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                elevation: 8,
                                underline: const SizedBox(),
                                isExpanded: true,
                                items: controller.genders
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) =>
                                    controller.selectGender(value),
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
