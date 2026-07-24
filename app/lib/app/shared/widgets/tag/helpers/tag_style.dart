import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_tag_state.dart';
import '../app_tag_variant.dart';

class TagStyle {
  const TagStyle._();

  static Color backgroundColor(
    AppTagVariant variant,
    AppTagState state,
  ) {
    if (state == AppTagState.disabled) {
      return AppColors.neutral.c100;
    }

    switch (variant) {
      case AppTagVariant.filled:
        return state == AppTagState.selected
            ? AppColors.primary.c600
            : AppColors.primary.c500;

      case AppTagVariant.outlined:
        return Colors.transparent;
    }
  }

  static Color borderColor(
    AppTagVariant variant,
    AppTagState state,
  ) {
    if (variant == AppTagVariant.outlined) {
      return state == AppTagState.selected
          ? AppColors.primary.c600
          : AppColors.neutral.c300;
    }

    return Colors.transparent;
  }

  static Color foregroundColor(
    AppTagVariant variant,
    AppTagState state,
  ) {
    if (state == AppTagState.disabled) {
      return AppColors.neutral.c400;
    }

    return variant == AppTagVariant.filled
        ? Colors.white
        : AppColors.primary.c500;
  }

  static TextStyle get textStyle => AppTypography.labelMedium;
}
