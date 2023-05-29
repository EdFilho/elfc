import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/enums/enums.dart';
import '../components.dart';

class CustomButtom extends StatelessWidget {
  final void Function() onTap;
  final String label;
  final ButtonType type;
  final bool disable;
  final bool small;
  final bool isLoading;
  final String? icon;

  const CustomButtom({
    super.key,
    required this.onTap,
    required this.label,
    this.type = ButtonType.primary,
    this.disable = false,
    this.small = false,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = context.theme.primaryColor;
    switch (type) {
      case ButtonType.primary:
        break;
      case ButtonType.seccond:
        backgroundColor = Colors.transparent;
        break;
      case ButtonType.danger:
        backgroundColor = context.theme.colorScheme.error;
        break;
    }

    return Visibility(
      visible: !isLoading,
      replacement: const CircularProgressIndicator(),
      child: ElevatedButton(
        onPressed: disable ? null : onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(Get.width, small ? 36 : 54),
          backgroundColor: backgroundColor,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: type == ButtonType.seccond
              ? BorderSide(
                  width: 1,
                  color: context.theme.primaryColor,
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: icon != null,
              child: CustomIcon(
                icon: icon ?? '',
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: type != ButtonType.primary
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
