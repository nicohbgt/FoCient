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

enum AppButtonSize {
  small,
  medium,
  large,
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = AppButtonType.primary,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.fullWidth = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final AppButtonSize size;
  final bool isLoading;
  final bool fullWidth;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      height: _buttonHeight,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: _buttonStyle,
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    if (isLoading) {
      return const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
      );
    }

    return Text(
      label,
      style: _textStyle,
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
          horizontal: AppSpacing.s8,
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.r8,
          ),
        ),
      ),
    );
  }

  Color _backgroundColor(Set<WidgetState> states) {
    final isDisabled = states.contains(WidgetState.disabled);
    final isPressed = states.contains(WidgetState.pressed);

    switch (type) {
      case AppButtonType.primary:
        if (isDisabled) return AppColors.neutral.c200;
        if (isPressed) return AppColors.primary.c700;
        return AppColors.primary.c500;

      case AppButtonType.secondary:
        if (isDisabled) return AppColors.secondary.c100;
        if (isPressed) return AppColors.secondary.c700;
        return AppColors.secondary.c500;

      case AppButtonType.success:
        if (isDisabled) return AppColors.neutral.c200;
        if (isPressed) return AppColors.success.c700;
        return AppColors.success.c500;

      case AppButtonType.warning:
        if (isDisabled) return AppColors.neutral.c200;
        if (isPressed) return AppColors.warning.c700;
        return AppColors.warning.c500;

      case AppButtonType.error:
        if (isDisabled) return AppColors.neutral.c200;
        if (isPressed) return AppColors.error.c700;
        return AppColors.error.c500;
    }
  }

  Color _foregroundColor(Set<WidgetState> states) {
    final isDisabled = states.contains(WidgetState.disabled);

    if (isDisabled) {
      return AppColors.neutral.c400;
    }

    return Colors.white;
  }

  double get _buttonHeight {
    switch (size) {
      case AppButtonSize.small:
        return 40;

      case AppButtonSize.medium:
        return 48;

      case AppButtonSize.large:
        return 56;
    }
  }

  TextStyle get _textStyle {
    switch (size) {
      case AppButtonSize.small:
        return AppTypography.labelMedium;

      case AppButtonSize.medium:
        return AppTypography.labelLarge;

      case AppButtonSize.large:
        return AppTypography.titleSmall;
    }
  }
}
