import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_icon_button_state.dart';
import '../app_icon_button_variant.dart';

class IconButtonStyle {
  const IconButtonStyle._();

  static Color backgroundColor(
    AppIconButtonVariant variant,
    AppIconButtonState state,
  ) {
    if (state == AppIconButtonState.disabled) {
      return AppColors.neutral.c100;
    }

    switch (variant) {
      case AppIconButtonVariant.filled:
        return AppColors.primary.c500;

      case AppIconButtonVariant.outlined:
      case AppIconButtonVariant.ghost:
        return Colors.transparent;
    }
  }

  static Color borderColor(
    AppIconButtonVariant variant,
    AppIconButtonState state,
  ) {
    if (state == AppIconButtonState.disabled) {
      return AppColors.neutral.c300;
    }

    switch (variant) {
      case AppIconButtonVariant.outlined:
        return AppColors.neutral.c300;

      case AppIconButtonVariant.filled:
      case AppIconButtonVariant.ghost:
        return Colors.transparent;
    }
  }

  static Color iconColor(
    AppIconButtonVariant variant,
    AppIconButtonState state,
  ) {
    if (state == AppIconButtonState.disabled) {
      return AppColors.neutral.c400;
    }

    switch (variant) {
      case AppIconButtonVariant.filled:
        return Colors.white;

      case AppIconButtonVariant.outlined:
      case AppIconButtonVariant.ghost:
        return AppColors.neutral.c700;
    }
  }
}
