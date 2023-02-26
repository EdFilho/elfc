import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/theme/themes.dart';

class CustomButtom extends StatelessWidget {
  final void Function() onTap;
  final String label, type;
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
    Color backgroundColor = context.theme.primaryColor;
    switch (type) {
      case 'confirm':
        break;
      case 'seccond':
        backgroundColor = context.theme.scaffoldBackgroundColor;
        break;
      case 'delete':
        backgroundColor = context.theme.colorScheme.error;
        break;
      default:
        throw Exception(
            'Invalid type. Only "confirm" or "cancel" are allowed.');
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(Get.width, 54),
        textStyle: buttonText,
        backgroundColor: backgroundColor,
        side: type == "seccond"
            ? BorderSide(
                width: 1,
                color: context.theme.primaryColor,
              )
            : null,
      ),
      onPressed: disable ? null : onTap,
      child: Text(
        label,
        style: defaultText.copyWith(
          color: type != 'confirm'
              ? Theme.of(context).primaryColor
              : Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
