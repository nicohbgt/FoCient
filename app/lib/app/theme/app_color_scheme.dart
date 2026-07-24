import 'package:flutter/material.dart';

import '../design system/tokens/colors/colors.dart';

class AppColorScheme {
  AppColorScheme._();

  static final ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary.c500,
    onPrimary: Colors.white,
    secondary: AppColors.secondary.c500,
    onSecondary: Colors.white,
    error: AppColors.error.c500,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: AppColors.neutral.c900,
  );

  static final ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary.c300,
    onPrimary: Colors.white,
    secondary: AppColors.secondary.c100,
    onSecondary: Colors.white,
    error: AppColors.error.c100,
    onError: Colors.white,
    surface: AppColors.neutral.c900,
    onSurface: AppColors.neutral.c50,
  );
}
