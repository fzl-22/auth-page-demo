import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.keyboardType = TextInputType.name,
  }) : isPassword = false;

  const TextInputField.password({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.keyboardType = TextInputType.name,
  }) : isPassword = true;

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 2,
          ),
        ),
        filled: true,
        fillColor:
            Theme.of(context).colorScheme.inversePrimary.withOpacity(0.4),
        contentPadding: const EdgeInsets.all(16),
      ),
      obscureText: isPassword,
      validator: validator,
    );
  }
}
