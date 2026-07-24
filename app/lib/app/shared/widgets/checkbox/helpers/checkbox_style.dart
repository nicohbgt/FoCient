import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_checkbox_state.dart';

class CheckboxStyle {
  const CheckboxStyle._();

  static Color borderColor(
    AppCheckboxState state,
    bool checked,
  ) {
    if (state == AppCheckboxState.disabled) {
      return AppColors.neutral.c300;
    }

    if (checked) {
      return AppColors.primary.c500;
    }

    if (state == AppCheckboxState.active) {
      return AppColors.primary.c500;
    }

    return AppColors.neutral.c300;
  }

  static Color fillColor(
    AppCheckboxState state,
    bool checked,
  ) {
    if (state == AppCheckboxState.disabled) {
      return checked ? AppColors.neutral.c300 : Colors.transparent;
    }

    return checked ? AppColors.primary.c500 : Colors.transparent;
  }

  static Color iconColor(
    AppCheckboxState state,
  ) {
    if (state == AppCheckboxState.disabled) {
      return AppColors.neutral.c100;
    }

    return Colors.white;
  }
}
