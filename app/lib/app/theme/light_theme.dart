import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.neutral.c50,
  colorScheme: ColorScheme.light(
    primary: AppColors.primary.c500,
    secondary: AppColors.secondary.c500,
    surface: AppColors.neutral.c0,
    error: AppColors.error.c500,
    onPrimary: AppColors.neutral.c0,
    onSecondary: AppColors.neutral.c0,
    onSurface: AppColors.neutral.c900,
    onError: AppColors.neutral.c0,
  ),
);
