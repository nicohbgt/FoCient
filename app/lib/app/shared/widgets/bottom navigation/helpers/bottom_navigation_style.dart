import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

import '../app_bottom_navigation_state.dart';

class BottomNavigationStyle {
  const BottomNavigationStyle._();

  static Color backgroundColor = AppColors.primary.c100;

  static Color itemColor(
    AppBottomNavigationState state,
  ) {
    switch (state) {
      case AppBottomNavigationState.selected:
        return AppColors.primary.c500;

      case AppBottomNavigationState.disabled:
        return AppColors.neutral.c300;

      case AppBottomNavigationState.defaultState:
        return AppColors.neutral.c500;
    }
  }

  static TextStyle labelStyle(
    AppBottomNavigationState state,
  ) {
    return AppTypography.labelMedium.copyWith(
      color: itemColor(state),
    );
  }
}
