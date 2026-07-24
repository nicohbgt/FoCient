import 'package:flutter/material.dart';

import '../design system/tokens/colors/colors.dart';
import '../design system/tokens/typography/typography.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  static final light = AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: AppColors.neutral.c900,
    elevation: 0,
    scrolledUnderElevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
    titleTextStyle: AppTypography.headingLarge.copyWith(
      color: AppColors.neutral.c900,
    ),
    iconTheme: IconThemeData(
      color: AppColors.neutral.c900,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: AppColors.neutral.c900,
      size: 24,
    ),
  );
}
