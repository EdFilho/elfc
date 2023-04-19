import 'package:flutter/material.dart';

import '../../../../core/shared/utilities/helppers.dart';

class MoneyCard extends StatelessWidget {
  final String title;
  final num value;
  final bool isNegative;

  const MoneyCard({
    super.key,
    required this.title,
    required this.value,
    this.isNegative = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            toRealFormat(value.toString()),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: isNegative
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.surface,
                ),
          ),
        ],
      ),
    );
  }
}
