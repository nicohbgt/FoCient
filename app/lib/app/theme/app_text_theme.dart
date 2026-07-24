import 'package:flutter/material.dart';

import '../design system/tokens/typography/typography.dart';

class AppTextThemes {
  AppTextThemes._();

  static final TextTheme light = TextTheme(
    displayLarge: AppTypography.displayLarge,
    displayMedium: AppTypography.displayMedium,
    headlineLarge: AppTypography.headingExtraLarge,
    headlineMedium: AppTypography.headingLarge,
    headlineSmall: AppTypography.headingMedium,
    titleLarge: AppTypography.titleLarge,
    titleMedium: AppTypography.titleMedium,
    bodyLarge: AppTypography.bodyLarge,
    bodyMedium: AppTypography.bodyMedium,
    bodySmall: AppTypography.bodySmall,
    labelLarge: AppTypography.labelLarge,
    labelMedium: AppTypography.labelMedium,
    labelSmall: AppTypography.caption,
  );

  static final TextTheme dark = light;
}
