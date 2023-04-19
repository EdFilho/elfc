import 'package:flutter/material.dart';

import '../../../../core/shared/utilities/helppers.dart';
import '../components.dart';

class FinanceBalance extends StatelessWidget {
  final num value;
  final bool isNegative;

  const FinanceBalance({
    super.key,
    required this.value,
    this.isNegative = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          toRealFormat(5000.toString()),
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: isNegative
                    ? Theme.of(context).colorScheme.error
                    : Theme.of(context).colorScheme.surface,
              ),
        ),
        const SizedBox(width: 4),
        CustomIcon(
          icon: isNegative ? 'arrow_down' : 'arrow_up',
          color: isNegative
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).colorScheme.surface,
        ),
      ],
    );
  }
}
