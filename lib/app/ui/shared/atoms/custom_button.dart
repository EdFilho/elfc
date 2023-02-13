import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/shared/theme.dart';

class CustomButtom extends StatelessWidget {
  final void Function() onTap;
  final String label;
  final String type;
  final bool disable;

  const CustomButtom({
    super.key,
    required this.onTap,
    required this.label,
    this.type = 'confirm',
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'confirm':
        break;
      case 'seccond':
        break;
      case 'delete':
        break;
      default:
        throw Exception(
            'Invalid type. Only "confirm" or "cancel" are allowed.');
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(Get.width, 54),
        textStyle: buttonText,
        side: const BorderSide(
          width: 1,
        ),
      ),
      onPressed: disable ? null : onTap,
      child: Text(label),
    );
  }
}
