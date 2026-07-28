import 'package:flutter/material.dart';

import '../../../design system/tokens/colors/app_colors.dart';
import '../../../design system/tokens/radius/app_radius.dart';
import '../../../design system/tokens/typography/app_typography.dart';

import 'app_text_field_size.dart';
import 'app_text_field_state.dart';
import 'app_text_field_variant.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.label,
    this.hintText,
    this.variant = AppTextFieldVariant.defaultField,
    this.size = AppTextFieldSize.large,
    this.state = AppTextFieldState.defaultState,
    this.prefixIcon,
    this.suffixIcon,
    this.leading,
    this.trailing,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
    this.onChanged,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  final String? hintText;
  final String? label;

  final AppTextFieldVariant variant;
  final AppTextFieldSize size;
  final AppTextFieldState state;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? leading;
  final Widget? trailing;

  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final field = _buildField();

    if (label == null) {
      return field;
    }

    return SizedBox(
      width: _width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label!,
            style: AppTypography.labelLarge,
          ),
          const SizedBox(height: 8),
          field,
        ],
      ),
    );
  }

  Widget _buildField() {
    return SizedBox(
      width: _width,
      height: 36,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        enabled: enabled,
        obscureText: obscureText,
        keyboardType: keyboardType,
        onChanged: onChanged,
        style: AppTypography.bodySmall,
        decoration: _decoration,
      ),
    );
  }

  double get _width {
    switch (size) {
      case AppTextFieldSize.large:
        return 300;

      case AppTextFieldSize.medium:
        return 176;

      case AppTextFieldSize.small:
        return 140;
    }
  }

  InputDecoration get _decoration {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTypography.bodySmall,
      filled: true,
      fillColor: Colors.white,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      prefixIcon: _leading,
      suffixIcon: _trailing,
      enabledBorder: _border,
      focusedBorder: _border,
      errorBorder: _border,
      focusedErrorBorder: _border,
      disabledBorder: _border,
    );
  }

  Widget? get _leading {
    if (prefixIcon != null) return prefixIcon;
    if (variant != AppTextFieldVariant.leadingIcon) return null;

    return leading;
  }

  Widget? get _trailing {
    if (suffixIcon != null) return suffixIcon;
    if (variant != AppTextFieldVariant.trailingIcon) return null;

    return trailing;
  }

  OutlineInputBorder get _border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.r8),
      borderSide: BorderSide(
        color: _borderColor,
        width: 2,
      ),
    );
  }

  Color get _borderColor {
    switch (state) {
      case AppTextFieldState.defaultState:
        return AppColors.neutral.c300;

      case AppTextFieldState.active:
        return AppColors.primary.c500;

      case AppTextFieldState.error:
        return AppColors.error.c500;
    }
  }
}
