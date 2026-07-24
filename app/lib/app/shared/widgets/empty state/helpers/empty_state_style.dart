import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

class EmptyStateStyle {
  const EmptyStateStyle._();

  static TextStyle get titleStyle => AppTypography.titleMedium.copyWith(
        color: AppColors.primary.c900,
      );

  static TextStyle get descriptionStyle => AppTypography.bodyMedium.copyWith(
        color: AppColors.secondary.c700,
      );
}
