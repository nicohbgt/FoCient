import 'package:flutter/material.dart';

import 'widgets/password_field_widget.dart';

class AppPasswordField extends StatelessWidget {
  const AppPasswordField({
    super.key,
    required this.controller,
    this.hintText,
    this.enabled = true,
    this.error = false,
    this.onChanged,
  });

  final TextEditingController controller;

  final String? hintText;

  final bool enabled;

  final bool error;

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return PasswordFieldWidget(
      controller: controller,
      hintText: hintText,
      enabled: enabled,
      error: error,
      onChanged: onChanged,
    );
  }
}
