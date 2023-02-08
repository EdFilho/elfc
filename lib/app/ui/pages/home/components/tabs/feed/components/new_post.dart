import 'package:elfc/app/core/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../home_controller.dart';

class NewPost extends GetView<HomeController> {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Get.theme.dialogBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Get.theme.dividerColor,
            spreadRadius: 0,
            blurRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32.0,
            backgroundImage: AssetImage("assets/images/user.png"),
          ),
          const SizedBox(width: 16),
          Text(
            'Compartilhe seu treino',
            style: defaultText,
          ),
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => {},
            icon: SvgPicture.asset(
              'assets/icons/new_post.svg',
              color: Get.theme.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
