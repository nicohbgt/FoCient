import 'package:flutter/material.dart';

import 'app_text_field.dart';

class AppPasswordField extends StatefulWidget {
  const AppPasswordField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.enabled = true,
    this.validator,
    this.onChanged,
  });

  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final bool enabled;

  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: widget.controller,
      label: widget.label ?? 'Password',
      hintText: widget.hintText ?? 'Enter your password',
      enabled: widget.enabled,
      obscureText: _obscureText,
      validator: widget.validator,
      onChanged: widget.onChanged,
      suffixIcon: IconButton(
        onPressed: _toggleVisibility,
        icon: Icon(
          _obscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
        ),
      ),
    );
  }
}
