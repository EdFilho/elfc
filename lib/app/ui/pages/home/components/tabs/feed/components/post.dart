import 'package:elfc/app/core/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      margin: const EdgeInsets.only(bottom: 8),
      width: Get.width,
      decoration: BoxDecoration(
        color: Get.theme.dialogBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Get.theme.dividerColor,
            spreadRadius: 0,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("assets/images/fighter_girl.png"),
              ),
              const SizedBox(width: 8),
              Column(
                children: const [
                  Text('Larissa Bittencourt'),
                ],
              ),
              const Spacer(),
              PopupMenuButton(
                icon: SvgPicture.asset(
                  'assets/icons/popup_menu.svg',
                  color: Get.theme.primaryColor,
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'item',
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'item',
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'item',
                    child: Text('Item 3'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Image(
            image: const AssetImage(
              "assets/images/fighter_girl.png",
            ),
            fit: BoxFit.cover,
            width: Get.width,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/glove_outlined.svg',
                color: Get.theme.primaryColor,
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(
                'assets/icons/chat_outlined.svg',
                color: Get.theme.primaryColor,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Text('Curtido por '),
              Text(
                'Luiz Gomes ',
                style: defaultText.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('e '),
              Text(
                'outras pessoas',
                style: defaultText.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Larissa Bittencourt ',
                style: defaultText.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Que treino!!!'),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
