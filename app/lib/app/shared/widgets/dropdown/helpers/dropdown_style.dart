import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_dropdown_state.dart';

class DropdownStyle {
  const DropdownStyle._();

  static Color borderColor(AppDropdownState state) {
    switch (state) {
      case AppDropdownState.defaultState:
        return AppColors.neutral.c300;

      case AppDropdownState.active:
        return AppColors.primary.c500;

      case AppDropdownState.error:
        return AppColors.error.c500;
    }
  }

  static const Color backgroundColor = Colors.white;

  static const Color textColor = Colors.black;

  static Color iconColor(AppDropdownState state) {
    switch (state) {
      case AppDropdownState.defaultState:
      case AppDropdownState.active:
        return AppColors.neutral.c700;

      case AppDropdownState.error:
        return AppColors.error.c500;
    }
  }

  static TextStyle get textStyle => AppTypography.bodySmall.copyWith(
        color: textColor,
      );

  static TextStyle get hintStyle => AppTypography.bodySmall.copyWith(
        color: AppColors.neutral.c400,
      );
}
