import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_badge_variant.dart';

class BadgeStyle {
  const BadgeStyle._();

  static Color backgroundColor(
    AppBadgeVariant variant,
  ) {
    switch (variant) {
      case AppBadgeVariant.primary:
        return AppColors.primary.c500;

      case AppBadgeVariant.secondary:
        return AppColors.secondary.c500;

      case AppBadgeVariant.success:
        return AppColors.success.c500;

      case AppBadgeVariant.warning:
        return AppColors.warning.c500;

      case AppBadgeVariant.error:
        return AppColors.error.c500;

      case AppBadgeVariant.info:
        return AppColors.info.c500;
    }
  }

  static Color foregroundColor(
    AppBadgeVariant variant,
  ) {
    return Colors.white;
  }

  static TextStyle get textStyle => AppTypography.labelMedium;
}
