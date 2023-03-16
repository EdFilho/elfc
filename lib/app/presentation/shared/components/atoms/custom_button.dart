import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtom extends StatelessWidget {
  final void Function() onTap;
  final String label, type;
  final bool disable;
  final bool small;

  const CustomButtom({
    super.key,
    required this.onTap,
    required this.label,
    this.type = 'confirm',
    this.disable = false,
    this.small = false,
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
        minimumSize: Size(Get.width, small ? 36 : 54),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
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
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: type != 'confirm'
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }
}
