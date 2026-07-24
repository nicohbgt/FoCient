import 'package:flutter/material.dart';

import '../../../design system/tokens/colors/app_colors.dart';
import '../../../design system/tokens/radius/app_radius.dart';
import '../../../design system/tokens/spacing/app_spacing.dart';
import '../../../design system/tokens/typography/app_typography.dart';

import 'app_button_variant.dart';
import 'app_button_size.dart';
import 'app_button_state.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.w200,
    this.state = AppButtonState.defaultState,
    this.leading,
    this.trailing,
  });

  final String text;
  final VoidCallback? onPressed;

  final AppButtonVariant variant;
  final AppButtonSize size;
  final AppButtonState state;

  final Widget? leading;
  final Widget? trailing;

  Color get _backgroundColor {
    if (state == AppButtonState.disabled) {
      return AppColors.neutral.c200;
    }

    switch (variant) {
      case AppButtonVariant.primary:
        return state == AppButtonState.active
            ? AppColors.primary.c700
            : AppColors.primary.c500;

      case AppButtonVariant.success:
        return state == AppButtonState.active
            ? AppColors.success.c700
            : AppColors.success.c500;

      case AppButtonVariant.warning:
        return state == AppButtonState.active
            ? AppColors.warning.c700
            : AppColors.warning.c500;

      case AppButtonVariant.error:
        return state == AppButtonState.active
            ? AppColors.error.c700
            : AppColors.error.c500;
    }
  }

  Color get _foregroundColor {
    return state == AppButtonState.disabled
        ? AppColors.neutral.c400
        : Colors.white;
  }

  Size get _buttonSize {
    switch (size) {
      case AppButtonSize.w200:
        return const Size(200, 36);

      case AppButtonSize.w100:
        return const Size(100, 36);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _buttonSize.width,
      height: _buttonSize.height,
      child: FilledButton(
        onPressed: state == AppButtonState.disabled ? null : onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: _backgroundColor,
          foregroundColor: _foregroundColor,
          disabledBackgroundColor: AppColors.neutral.c200,
          disabledForegroundColor: AppColors.neutral.c400,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
          textStyle: AppTypography.labelLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[
              leading!,
              const SizedBox(width: AppSpacing.sm),
            ],
            Text(text),
            if (trailing != null) ...[
              const SizedBox(width: AppSpacing.sm),
              trailing!,
            ],
          ],
        ),
      ),
    );
  }
}
