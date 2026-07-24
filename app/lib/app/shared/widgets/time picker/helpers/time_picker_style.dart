import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_time_picker_state.dart';

class TimePickerStyle {
  const TimePickerStyle._();

  static Color borderColor(AppTimePickerState state) {
    switch (state) {
      case AppTimePickerState.defaultState:
        return AppColors.neutral.c300;

      case AppTimePickerState.active:
        return AppColors.primary.c500;

      case AppTimePickerState.error:
        return AppColors.error.c500;
    }
  }

  static Color iconColor(AppTimePickerState state) {
    switch (state) {
      case AppTimePickerState.defaultState:
      case AppTimePickerState.active:
        return AppColors.neutral.c700;

      case AppTimePickerState.error:
        return AppColors.error.c500;
    }
  }

  static TextStyle get textStyle => AppTypography.bodySmall;

  static TextStyle get hintStyle => AppTypography.bodySmall.copyWith(
        color: AppColors.neutral.c400,
      );
}
