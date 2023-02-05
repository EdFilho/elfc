import 'package:flutter/material.dart';

import '../../../core/shared/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String)? onSubmitted;
  final Function(String)? onChage;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool enabled;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.onSubmitted,
    this.onChage,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.obscureText = false,
    this.suffixIcon,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        cursorColor: AppColors.lightColor,
        decoration: InputDecoration(
          labelText: label,
          isDense: true,
          suffixIcon: suffixIcon,
        ),
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
        focusNode: focusNode,
        enabled: enabled,
        keyboardType: keyboardType,
        onFieldSubmitted: onSubmitted,
        onChanged: onChage,
      ),
    );
  }
}
