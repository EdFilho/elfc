import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../components.dart';

class ImageProfile extends GetView<AuthController> {
  final bool bordered, selected, withBackground;
  final double size;

  const ImageProfile({
    super.key,
    this.bordered = false,
    this.selected = true,
    this.withBackground = false,
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Visibility(
        visible: controller.account.value.profileImageUrl != null,
        replacement: CircleAvatar(
          backgroundColor: withBackground ? Theme.of(context).focusColor : Colors.transparent,
          child: Container(
            padding: withBackground ? const EdgeInsets.all(2.0) : EdgeInsets.zero,
            child: Visibility(
              visible: selected,
              replacement: CustomIcon(
                icon: 'profile_outlined',
                size: size,
              ),
              child: CustomIcon(
                icon: 'profile',
                size: size,
              ),
            ),
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Container(
            padding: bordered ? const EdgeInsets.all(2.0) : EdgeInsets.zero,
            child: CircleAvatar(
              radius: size,
              backgroundImage: NetworkImage(
                controller.account.value.profileImageUrl ?? '',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
