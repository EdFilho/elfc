import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PercentBar extends StatelessWidget {
  final double value;
  final String subtitle;
  final Color? color;

  const PercentBar({
    super.key,
    required this.value,
    required this.subtitle,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 12,
                width: ((Get.width - 32) * value) / 100,
                decoration: BoxDecoration(
                  color: color ?? Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                '$value%',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
