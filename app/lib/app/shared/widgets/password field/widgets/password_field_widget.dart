import 'package:flutter/material.dart';

import '../../text field/app_text_field.dart';
import '../../text field/app_text_field_state.dart';
import '../../text field/app_text_field_variant.dart';

import '../helpers/password_field_style.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({
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
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: widget.controller,
      hintText: widget.hintText,
      enabled: widget.enabled,
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      variant: AppTextFieldVariant.trailingIcon,
      state: widget.error
          ? AppTextFieldState.error
          : AppTextFieldState.defaultState,
      trailing: IconButton(
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        icon: Icon(
          _obscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: PasswordFieldStyle.iconColor,
        ),
      ),
    );
  }
}
