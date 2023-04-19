import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;
  final bool isSelected;

  const Tag(
    this.text, {
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.normal,
              color: isSelected ? null : Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }
}
