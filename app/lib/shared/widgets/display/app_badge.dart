import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

enum AppBadgeType {
  neutral,
  primary,
  secondary,
  success,
  warning,
  error,
  info,
}

enum AppBadgeVariant {
  filled,
  outlined,
}

enum AppBadgeSize {
  small,
  medium,
}

class AppBadge extends StatelessWidget {
  const AppBadge({
    super.key,
    required this.label,
    this.type = AppBadgeType.primary,
    this.variant = AppBadgeVariant.filled,
    this.size = AppBadgeSize.medium,
    this.leading,
    this.trailing,
  });

  final String label;
  final AppBadgeType type;
  final AppBadgeVariant variant;
  final AppBadgeSize size;

  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
        vertical: _verticalPadding,
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
            SizedBox(width: AppSpacing.s4),
          ],
          Text(
            label,
            style: _textStyle.copyWith(
              color: _foregroundColor,
            ),
          ),
          if (trailing != null) ...[
            SizedBox(width: AppSpacing.s4),
            trailing!,
          ],
        ],
      ),
    );
  }

  double get _horizontalPadding {
    switch (size) {
      case AppBadgeSize.small:
        return AppSpacing.s8;

      case AppBadgeSize.medium:
        return AppSpacing.s12;
    }
  }

  double get _verticalPadding {
    switch (size) {
      case AppBadgeSize.small:
        return AppSpacing.s4;

      case AppBadgeSize.medium:
        return AppSpacing.s8;
    }
  }

  TextStyle get _textStyle {
    switch (size) {
      case AppBadgeSize.small:
        return AppTypography.labelSmall;

      case AppBadgeSize.medium:
        return AppTypography.labelMedium;
    }
  }

  Color get _backgroundColor {
    if (variant == AppBadgeVariant.outlined) {
      return Colors.transparent;
    }

    switch (type) {
      case AppBadgeType.neutral:
        return AppColors.neutral.c100;

      case AppBadgeType.primary:
        return AppColors.primary.c500;

      case AppBadgeType.secondary:
        return AppColors.secondary.c500;

      case AppBadgeType.success:
        return AppColors.success.c500;

      case AppBadgeType.warning:
        return AppColors.warning.c500;

      case AppBadgeType.error:
        return AppColors.error.c500;

      case AppBadgeType.info:
        return AppColors.info.c500;
    }
  }

  Color get _borderColor {
    switch (type) {
      case AppBadgeType.neutral:
        return AppColors.neutral.c300;

      case AppBadgeType.primary:
        return AppColors.primary.c500;

      case AppBadgeType.secondary:
        return AppColors.secondary.c500;

      case AppBadgeType.success:
        return AppColors.success.c500;

      case AppBadgeType.warning:
        return AppColors.warning.c500;

      case AppBadgeType.error:
        return AppColors.error.c500;

      case AppBadgeType.info:
        return AppColors.info.c500;
    }
  }

  Color get _foregroundColor {
    if (variant == AppBadgeVariant.outlined) {
      return _borderColor;
    }

    switch (type) {
      case AppBadgeType.neutral:
        return AppColors.neutral.c700;

      default:
        return Colors.white;
    }
  }
}
