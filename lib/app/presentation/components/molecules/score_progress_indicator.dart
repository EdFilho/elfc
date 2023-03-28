import 'package:elfc/core/shared/utilities/number/thousand_formatter.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class ScoreProgressIndicator extends StatelessWidget {
  final double value;

  const ScoreProgressIndicator({
    super.key,
    required this.value,
  });

  double percentValue() {
    double maxValue = 30000;
    double percentValue = (100 * value) / maxValue;

    return percentValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(),
            Column(
              children: [
                CustomIcon(
                  icon: "glove_score",
                  color: percentValue() >= 20
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.shadow,
                ),
                Container(
                  height: 8,
                  width: 2,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: percentValue() >= 20
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.shadow,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CustomIcon(
                  icon: "glove_score",
                  color: percentValue() >= 40
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.shadow,
                ),
                Container(
                  height: 8,
                  width: 2,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: percentValue() >= 40
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.shadow,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CustomIcon(
                  icon: "glove_score",
                  color: percentValue() >= 60
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.shadow,
                ),
                Container(
                  height: 8,
                  width: 2,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: percentValue() >= 60
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.shadow,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CustomIcon(
                  icon: "glove_score",
                  color: percentValue() >= 80
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.shadow,
                ),
                Container(
                  height: 8,
                  width: 2,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: percentValue() >= 80
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.shadow,
                  ),
                ),
              ],
            ),
          ],
        ),
        StaticProgressBar(value: percentValue()),
        const SizedBox(height: 8),
        Text(
          "${thousandFormatter(value)} pontos conquistados",
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
