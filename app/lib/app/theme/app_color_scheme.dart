import 'package:flutter/material.dart';

import '../design system/tokens/colors/colors.dart';

class AppColorScheme {
  const AppColorScheme._();

  static final ColorScheme light = ColorScheme(
    brightness: Brightness.light,

    // Primary
    primary: AppColors.primary.c500,
    onPrimary: AppColors.neutral.c0,
    primaryContainer: AppColors.primary.c100,
    onPrimaryContainer: AppColors.primary.c900,

    // Secondary
    secondary: AppColors.secondary.c500,
    onSecondary: AppColors.neutral.c0,
    secondaryContainer: AppColors.secondary.c100,
    onSecondaryContainer: AppColors.secondary.c700,

    // Error
    error: AppColors.error.c500,
    onError: AppColors.neutral.c0,
    errorContainer: AppColors.error.c100,
    onErrorContainer: AppColors.error.c700,

    // Surface
    surface: AppColors.neutral.c0,
    onSurface: AppColors.neutral.c900,

    // Outline
    outline: AppColors.neutral.c300,
    outlineVariant: AppColors.neutral.c200,

    // Misc
    shadow: Colors.black26,
    scrim: Colors.black54,
    inverseSurface: AppColors.neutral.c900,
    onInverseSurface: AppColors.neutral.c50,
    inversePrimary: AppColors.primary.c300,
    surfaceTint: AppColors.primary.c500,
  );

  static final ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,

    // Primary
    primary: AppColors.primary.c300,
    onPrimary: AppColors.neutral.c900,
    primaryContainer: AppColors.primary.c700,
    onPrimaryContainer: AppColors.primary.c50,

    // Secondary
    secondary: AppColors.secondary.c100,
    onSecondary: AppColors.neutral.c900,
    secondaryContainer: AppColors.secondary.c700,
    onSecondaryContainer: AppColors.neutral.c50,

    // Error
    error: AppColors.error.c100,
    onError: AppColors.neutral.c900,
    errorContainer: AppColors.error.c700,
    onErrorContainer: AppColors.neutral.c50,

    // Surface
    surface: AppColors.neutral.c900,
    onSurface: AppColors.neutral.c50,

    // Outline
    outline: AppColors.neutral.c600,
    outlineVariant: AppColors.neutral.c700,

    // Misc
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.neutral.c50,
    onInverseSurface: AppColors.neutral.c900,
    inversePrimary: AppColors.primary.c500,
    surfaceTint: AppColors.primary.c300,
  );
}
