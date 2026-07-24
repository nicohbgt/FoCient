import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_date_picker_state.dart';

class DatePickerStyle {
  const DatePickerStyle._();

  static Color borderColor(AppDatePickerState state) {
    switch (state) {
      case AppDatePickerState.defaultState:
        return AppColors.neutral.c300;

      case AppDatePickerState.active:
        return AppColors.primary.c500;

      case AppDatePickerState.error:
        return AppColors.error.c500;
    }
  }

  static Color iconColor(AppDatePickerState state) {
    switch (state) {
      case AppDatePickerState.defaultState:
      case AppDatePickerState.active:
        return AppColors.neutral.c700;

      case AppDatePickerState.error:
        return AppColors.error.c500;
    }
  }

  static TextStyle get textStyle => AppTypography.bodySmall;

  static TextStyle get hintStyle => AppTypography.bodySmall.copyWith(
        color: AppColors.neutral.c400,
      );
}
