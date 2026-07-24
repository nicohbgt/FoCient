import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_switch_state.dart';

class SwitchStyle {
  const SwitchStyle._();

  static Color trackColor(
    AppSwitchState state,
    bool value,
  ) {
    if (state == AppSwitchState.disabled) {
      return value ? AppColors.neutral.c300 : AppColors.neutral.c200;
    }

    return value ? AppColors.primary.c500 : AppColors.neutral.c300;
  }

  static Color thumbColor(
    AppSwitchState state,
  ) {
    if (state == AppSwitchState.disabled) {
      return AppColors.neutral.c100;
    }

    return Colors.white;
  }
}
