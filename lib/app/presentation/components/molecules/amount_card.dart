import 'package:flutter/material.dart';

import '../../../../core/shared/utilities/helppers.dart';

class AmountCard extends StatelessWidget {
  final String title;
  final num value;
  final bool isSelected;
  final bool monetary;
  final bool tagged;

  const AmountCard({
    super.key,
    required this.title,
    required this.value,
    this.isSelected = false,
    this.monetary = false,
    this.tagged = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: isSelected
                      ? Theme.of(context).colorScheme.background
                      : Theme.of(context).colorScheme.primary,
                ),
          ),
          Text(
            monetary ? toRealFormat(value.toString()) : value.toString(),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: isSelected
                      ? Theme.of(context).colorScheme.background
                      : Theme.of(context).colorScheme.primary,
                ),
          ),
        ],
      ),
    );
  }
}
