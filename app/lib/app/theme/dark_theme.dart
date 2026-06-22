import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.neutral.c900,
  colorScheme: ColorScheme.dark(
    primary: AppColors.primary.c500,
    secondary: AppColors.secondary.c500,
    surface: AppColors.neutral.c800,
    error: AppColors.error.c500,
    onPrimary: AppColors.neutral.c0,
    onSecondary: AppColors.neutral.c0,
    onSurface: AppColors.neutral.c0,
    onError: AppColors.neutral.c0,
  ),
);
