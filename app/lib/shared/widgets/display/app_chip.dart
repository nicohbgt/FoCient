import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

enum AppChipType {
  primary,
  secondary,
  success,
  warning,
  error,
  neutral,
}

enum AppChipVariant {
  filled,
  outlined,
}

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.label,
    this.selected = false,
    this.type = AppChipType.primary,
    this.variant = AppChipVariant.filled,
    this.leading,
    this.trailing,
    this.onTap,
    this.onDeleted,
  });

  final String label;
  final bool selected;

  final AppChipType type;
  final AppChipVariant variant;

  final Widget? leading;
  final Widget? trailing;

  final VoidCallback? onTap;
  final VoidCallback? onDeleted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        AppRadius.full,
      ),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s12,
          vertical: AppSpacing.s8,
        ),
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: BorderRadius.circular(
            AppRadius.full,
          ),
          border: Border.all(
            color: _borderColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leading != null) ...[
              leading!,
              SizedBox(width: AppSpacing.s8),
            ],
            Text(
              label,
              style: AppTypography.label.labelMedium.copyWith(
                color: _textColor,
              ),
            ),
            if (trailing != null) ...[
              SizedBox(width: AppSpacing.s8),
              trailing!,
            ],
            if (onDeleted != null) ...[
              SizedBox(width: AppSpacing.s8),
              GestureDetector(
                onTap: onDeleted,
                child: Icon(
                  Icons.close,
                  size: 16,
                  color: _textColor,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color get _backgroundColor {
    if (!selected) {
      return Colors.transparent;
    }

    switch (type) {
      case AppChipType.primary:
        return AppColors.primary.c500;

      case AppChipType.secondary:
        return AppColors.secondary.c500;

      case AppChipType.success:
        return AppColors.success.c500;

      case AppChipType.warning:
        return AppColors.warning.c500;

      case AppChipType.error:
        return AppColors.error.c500;

      case AppChipType.neutral:
        return AppColors.neutral.c200;
    }
  }

  Color get _borderColor {
    switch (type) {
      case AppChipType.primary:
        return AppColors.primary.c500;

      case AppChipType.secondary:
        return AppColors.secondary.c500;

      case AppChipType.success:
        return AppColors.success.c500;

      case AppChipType.warning:
        return AppColors.warning.c500;

      case AppChipType.error:
        return AppColors.error.c500;

      case AppChipType.neutral:
        return AppColors.neutral.c300;
    }
  }

  Color get _textColor {
    if (selected) {
      if (type == AppChipType.neutral) {
        return AppColors.neutral.c700;
      }

      return Colors.white;
    }

    switch (type) {
      case AppChipType.primary:
        return AppColors.primary.c500;

      case AppChipType.secondary:
        return AppColors.secondary.c500;

      case AppChipType.success:
        return AppColors.success.c500;

      case AppChipType.warning:
        return AppColors.warning.c500;

      case AppChipType.error:
        return AppColors.error.c500;

      case AppChipType.neutral:
        return AppColors.neutral.c700;
    }
  }
}
