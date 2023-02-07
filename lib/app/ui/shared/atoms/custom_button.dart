import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/shared/colors.dart';
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
    Color buttonColor;
    Color? shadowColor;
    Color? foregroundColor;
    Color borderColor = Colors.transparent;

    switch (type) {
      case 'confirm':
        buttonColor = Get.theme.primaryColor;
        foregroundColor = Get.theme.backgroundColor;
        break;
      case 'seccond':
        buttonColor = Colors.transparent;
        shadowColor = Colors.transparent;
        borderColor = Get.theme.primaryColor;
        foregroundColor = Get.theme.primaryColor;
        break;
      case 'delete':
        buttonColor = AppColors.errorColor;
        break;
      default:
        throw Exception(
            'Invalid type. Only "confirm" or "cancel" are allowed.');
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: foregroundColor,
        shadowColor: shadowColor,
        minimumSize: Size(Get.width, 54),
        textStyle: buttonText,
        side: BorderSide(
          color: borderColor,
          width: 1,
        ),
      ),
      onPressed: disable ? null : onTap,
      child: Text(label),
    );
  }
}
