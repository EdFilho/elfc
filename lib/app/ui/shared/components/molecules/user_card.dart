import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import '../components.dart';

class UserCard extends StatelessWidget {
  final String userName, birthDate, createdAt;

  const UserCard({
    Key? key,
    required this.userName,
    required this.birthDate,
    required this.createdAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 40.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
      ),
      child: Row(
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
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomIcon(
                    icon: "cake",
                    size: 16,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    birthDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Text(
                "Membro há $createdAt mêses",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            context.isDarkMode
                ? "assets/images/logo_white.png"
                : "assets/images/logo_black.png",
            height: 88.0,
          ),
        ],
      ),
    );
  }
}
