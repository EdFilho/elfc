
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/components/components.dart';
import '../../register_controller.dart';

class PersonalData extends GetView<RegisterController> {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: controller.emailController.value,
          label: 'Nome',
        ),
        CustomTextField(
          controller: controller.passwordController.value,
          label: 'Sobrenome',
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
                  icon: const Icon(Icons.calendar_today),
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
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    elevation: 8,
                    underline: const SizedBox(),
                    isExpanded: true,
                    items: controller.genders
                        .map<DropdownMenuItem<String>>((String value) {
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
    );
  }
}
