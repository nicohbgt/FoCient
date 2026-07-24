import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_snackbar_variant.dart';

class SnackbarStyle {
  const SnackbarStyle._();

  static Color backgroundColor(
    AppSnackbarVariant variant,
  ) {
    switch (variant) {
      case AppSnackbarVariant.success:
        return AppColors.success.c500;

      case AppSnackbarVariant.warning:
        return AppColors.warning.c500;

      case AppSnackbarVariant.error:
        return AppColors.error.c500;

      case AppSnackbarVariant.info:
        return AppColors.info.c500;
    }
  }

  static IconData icon(
    AppSnackbarVariant variant,
  ) {
    switch (variant) {
      case AppSnackbarVariant.success:
        return Icons.check_circle;

      case AppSnackbarVariant.warning:
        return Icons.warning;

      case AppSnackbarVariant.error:
        return Icons.error;

      case AppSnackbarVariant.info:
        return Icons.info;
    }
  }

  static const Color foregroundColor = Colors.white;

  static TextStyle get messageStyle => AppTypography.bodyMedium.copyWith(
        color: foregroundColor,
      );

  static TextStyle get actionStyle => AppTypography.labelMedium.copyWith(
        color: foregroundColor,
      );
}
