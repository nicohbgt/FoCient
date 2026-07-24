import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_radio_state.dart';

class RadioStyle {
  const RadioStyle._();

  static Color borderColor(
    AppRadioState state,
    bool selected,
  ) {
    if (state == AppRadioState.disabled) {
      return AppColors.neutral.c300;
    }

    if (selected) {
      return AppColors.primary.c500;
    }

    if (state == AppRadioState.active) {
      return AppColors.primary.c500;
    }

    return AppColors.neutral.c300;
  }

  static Color fillColor(
    AppRadioState state,
  ) {
    if (state == AppRadioState.disabled) {
      return AppColors.neutral.c300;
    }

    return AppColors.primary.c500;
  }
}
