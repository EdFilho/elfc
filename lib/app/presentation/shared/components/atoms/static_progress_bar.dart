import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StaticProgressBar extends StatelessWidget {
  final double value;

  const StaticProgressBar({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 9,
          width: Get.width - 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).colorScheme.shadow,
          ),
        ),
        Container(
          height: 9,
          width: ((Get.width - 32) * value) / 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
