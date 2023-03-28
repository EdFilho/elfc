import 'package:flutter/material.dart';

class CustomSelect extends StatelessWidget {
  final List<dynamic> options;
  final dynamic value;
  final void Function(dynamic) onChanged;

  const CustomSelect({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: value,
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      elevation: 8,
      underline: const SizedBox(),
      isExpanded: true,
      items: options.map<DropdownMenuItem<dynamic>>((dynamic option) {
        return DropdownMenuItem<dynamic>(
          value: option,
          child: Text(
            option,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        );
      }).toList(),
      onChanged: (dynamic value) => onChanged(value),
    );
  }
}
