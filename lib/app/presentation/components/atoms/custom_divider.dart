import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
