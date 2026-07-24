import 'package:flutter/material.dart';

import '../design system/tokens/colors/colors.dart';
import '../design system/tokens/typography/typography.dart';

class AppTextTheme {
  const AppTextTheme._();

  static final TextTheme light = TextTheme(
    displayLarge: AppTypography.displayLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    displayMedium: AppTypography.displayMedium.copyWith(
      color: AppColors.neutral.c900,
    ),
    headlineLarge: AppTypography.headingExtraLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    headlineMedium: AppTypography.headingLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    headlineSmall: AppTypography.headingMedium.copyWith(
      color: AppColors.neutral.c900,
    ),
    titleLarge: AppTypography.titleLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    titleMedium: AppTypography.titleMedium.copyWith(
      color: AppColors.neutral.c900,
    ),
    bodyLarge: AppTypography.bodyLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    bodyMedium: AppTypography.bodyMedium.copyWith(
      color: AppColors.neutral.c900,
    ),
    bodySmall: AppTypography.bodySmall.copyWith(
      color: AppColors.neutral.c900,
    ),
    labelLarge: AppTypography.labelLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    labelMedium: AppTypography.labelMedium.copyWith(
      color: AppColors.neutral.c900,
    ),
    labelSmall: AppTypography.caption.copyWith(
      color: AppColors.neutral.c900,
    ),
  );

  static final TextTheme dark = TextTheme(
    displayLarge: AppTypography.displayLarge.copyWith(
      color: AppColors.neutral.c50,
    ),
    displayMedium: AppTypography.displayMedium.copyWith(
      color: AppColors.neutral.c50,
    ),
    headlineLarge: AppTypography.headingExtraLarge.copyWith(
      color: AppColors.neutral.c50,
    ),
    headlineMedium: AppTypography.headingLarge.copyWith(
      color: AppColors.neutral.c50,
    ),
    headlineSmall: AppTypography.headingMedium.copyWith(
      color: AppColors.neutral.c50,
    ),
    titleLarge: AppTypography.titleLarge.copyWith(
      color: AppColors.neutral.c50,
    ),
    titleMedium: AppTypography.titleMedium.copyWith(
      color: AppColors.neutral.c50,
    ),
    bodyLarge: AppTypography.bodyLarge.copyWith(
      color: AppColors.neutral.c50,
    ),
    bodyMedium: AppTypography.bodyMedium.copyWith(
      color: AppColors.neutral.c50,
    ),
    bodySmall: AppTypography.bodySmall.copyWith(
      color: AppColors.neutral.c50,
    ),
    labelLarge: AppTypography.labelLarge.copyWith(
      color: AppColors.neutral.c50,
    ),
    labelMedium: AppTypography.labelMedium.copyWith(
      color: AppColors.neutral.c50,
    ),
    labelSmall: AppTypography.caption.copyWith(
      color: AppColors.neutral.c50,
    ),
  );
}
