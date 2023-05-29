import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/shared/utilities/helppers.dart';
import '../../../../../components/components.dart';
import '../../register_controller.dart';

class PersonalData extends GetView<RegisterController> {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.personalDataKey.value,
        child: Column(
          children: [
            CustomTextField(
              controller: controller.nameController.value,
              label: 'Nome',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Campo obrigatório';
                }
                return null;
              },
            ),
            CustomTextField(
              controller: controller.lastNameController.value,
              label: 'Sobrenome',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: Obx(
                    () => CustomTextField(
                      controller: controller.birthdayDate.value,
                      label: 'Data de Nascimento',
                      hintText: 'DD/MM/AAAAA',
                      maskFormatter: [dateMaskFormatter],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo obrigatório';
                        }
                        if (!isUserAdult(parseDateString(value))) {
                          return 'você precisa ser maior de 18 anos.';
                        }
                        return null;
                      },
                      suffixIcon: IconButton(
                        onPressed: () => controller.selectDate(context),
                        icon: const CustomIcon(
                          icon: 'calendar',
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 0.5,
                          color: Get.theme.primaryColor,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.only(top: 26),
                    child: Obx(
                      () => DropdownButton(
                        value: controller.selectedGender.value,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        elevation: 8,
                        underline: const SizedBox(),
                        isExpanded: true,
                        items: controller.genders.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) => controller.selectGender(value),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            CustomButtom(
              onTap: () => controller.saveUserData(),
              label: 'Salvar',
            ),
          ],
        ),
      ),
    );
  }
}
