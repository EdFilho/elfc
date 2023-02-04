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

    switch (type) {
      case 'confirm':
        buttonColor = AppColors.lightColor;
        break;
      case 'cancel':
        buttonColor = Colors.transparent;
        shadowColor = Colors.transparent;
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
        foregroundColor: AppColors.darkGrey,
        shadowColor: shadowColor,
        minimumSize: Size(Get.width, 40),
        textStyle: buttonText,
      ),
      onPressed: disable ? null : onTap,
      child: Text(label),
    );
  }
}
