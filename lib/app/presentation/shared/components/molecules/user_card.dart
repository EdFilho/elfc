import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components.dart';

class UserCard extends StatelessWidget {
  final String userName, createdAt;
  final bool leading;
  final void Function()? settings;

  const UserCard({
    Key? key,
    required this.userName,
    required this.createdAt,
    this.leading = false,
    this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 36.0,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const CircleAvatar(
                  radius: 34.0,
                  backgroundImage: AssetImage(
                    "assets/images/user.png",
                  ),
                ),
              ),
              Text(
                userName,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "Membro há $createdAt mêses",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Visibility(
                visible: leading,
                child: InkWell(
                  onTap: Get.back,
                  child: const CustomIcon(icon: 'arrow_back'),
                ),
              ),
              const Spacer(),
              Visibility(
                visible: settings != null,
                child: InkWell(
                  onTap: settings,
                  child: const CustomIcon(icon: 'settings'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
