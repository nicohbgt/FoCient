import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

enum AppButtonType {
  primary,
  secondary,
  success,
  warning,
  error,
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = AppButtonType.primary,
    this.isLoading = false,
    this.fullWidth = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final bool isLoading;
  final bool fullWidth;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      enabled: !isDisabled,
      child: SizedBox(
        width: fullWidth ? double.infinity : _buttonWidth,
        height: _buttonHeight,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: _buttonStyle,
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (isLoading) {
      return SizedBox(
        width: 16,
        height: 16,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: _loadingColor,
        ),
      );
    }

    return Text(
      label,
      style: _textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  ButtonStyle get _buttonStyle {
    return ButtonStyle(
      elevation: WidgetStateProperty.all(0),
      backgroundColor: WidgetStateProperty.resolveWith(
        _backgroundColor,
      ),
      foregroundColor: WidgetStateProperty.resolveWith(
        _foregroundColor,
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppSpacing.s16,
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.r12,
          ),
        ),
      ),
    );
  }

  Color _backgroundColor(Set<WidgetState> states) {
    final disabled = states.contains(WidgetState.disabled);
    final pressed = states.contains(WidgetState.pressed);

    switch (type) {
      case AppButtonType.primary:
        if (disabled) return AppColors.neutral.c200;
        if (pressed) return AppColors.primary.c700;
        return AppColors.primary.c500;

      case AppButtonType.secondary:
        if (disabled) return AppColors.secondary.c100;
        if (pressed) return AppColors.secondary.c700;
        return AppColors.secondary.c500;

      case AppButtonType.success:
        if (disabled) return AppColors.neutral.c200;
        if (pressed) return AppColors.success.c700;
        return AppColors.success.c500;

      case AppButtonType.warning:
        if (disabled) return AppColors.neutral.c200;
        if (pressed) return AppColors.warning.c700;
        return AppColors.warning.c500;

      case AppButtonType.error:
        if (disabled) return AppColors.neutral.c200;
        if (pressed) return AppColors.error.c700;
        return AppColors.error.c500;
    }
  }

  Color _foregroundColor(Set<WidgetState> states) {
    if (states.contains(WidgetState.disabled)) {
      return AppColors.neutral.c400;
    }

    return Colors.white;
  }

  Color get _loadingColor {
    if (isDisabled) {
      return AppColors.neutral.c400;
    }

    return Colors.white;
  }

  double get _buttonWidth {
    switch (type) {
      case AppButtonType.primary:
      case AppButtonType.secondary:
        return 200;

      case AppButtonType.success:
      case AppButtonType.warning:
      case AppButtonType.error:
        return 100;
    }
  }

  double get _buttonHeight => 36;

  TextStyle get _textStyle {
    switch (type) {
      case AppButtonType.primary:
      case AppButtonType.secondary:
        return AppTypography.labelMedium;

      case AppButtonType.success:
      case AppButtonType.warning:
      case AppButtonType.error:
        return AppTypography.labelSmall;
    }
  }
}
