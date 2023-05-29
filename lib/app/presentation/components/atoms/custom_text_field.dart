import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final GlobalKey<FormState>? formKey;
  final TextEditingController controller;
  final String label;
  final String? hintText;
  final Function(String)? onSubmitted;
  final Function(String)? onChage;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool obscureText;
  final List<TextInputFormatter>? maskFormatter;
  final Widget? suffixIcon;
  final bool enabled;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.hintText,
    this.formKey,
    this.onSubmitted,
    this.onChage,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.maskFormatter,
    this.obscureText = false,
    this.suffixIcon,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        key: formKey,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          isDense: true,
          suffixIcon: suffixIcon,
        ),
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
        focusNode: focusNode,
        enabled: enabled,
        inputFormatters: maskFormatter,
        keyboardType: keyboardType,
        onFieldSubmitted: onSubmitted,
        onChanged: onChage,
        validator: validator,
      ),
    );
  }
}
