import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/shared/enums/enums.dart';
import '../../../../../components/components.dart';
import '../../register_controller.dart';

class ProfileImage extends GetView<RegisterController> {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Obx(
            () => Visibility(
              visible: !controller.withImage.value,
              replacement: Obx(
                () => CircleAvatar(
                  radius: 90,
                  backgroundImage: MemoryImage(controller.imageAsByte.value),
                ),
              ),
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Theme.of(context).focusColor,
                child: const CustomIcon(
                  icon: 'profile',
                  size: 150,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          CustomButtom(
            onTap: () => controller.selectImageType(context),
            label: 'Inserir foto',
          ),
          const SizedBox(height: 16),
          CustomButtom(
            onTap: () => controller.skip(),
            label: 'Pular',
            type: ButtonType.seccond,
          ),
        ],
      ),
    );
  }
}
