import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
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
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
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
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: toggleVisibility,
                child: Icon(
                  isVisible
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                ),
              )
            : null,
        suffixIconColor: Theme.of(context).colorScheme.primary,
        filled: true,
        fillColor:
            Theme.of(context).colorScheme.inversePrimary.withOpacity(0.4),
        contentPadding: const EdgeInsets.all(16),
      ),
      obscureText: widget.isPassword && !isVisible,
      validator: widget.validator,
    );
  }
}
