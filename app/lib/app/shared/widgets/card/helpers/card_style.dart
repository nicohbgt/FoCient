import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/shadow/app_shadow.dart';

import '../app_card_variant.dart';

class CardStyle {
  const CardStyle._();

  static Color backgroundColor(
    AppCardVariant variant,
  ) {
    switch (variant) {
      case AppCardVariant.elevated:
        return AppColors.primary.c100;

      case AppCardVariant.outlined:
        return AppColors.primary.c900;

      case AppCardVariant.filled:
        return AppColors.neutral.c100;
    }
  }

  static Border? border(
    AppCardVariant variant,
  ) {
    if (variant != AppCardVariant.outlined) {
      return null;
    }

    return Border.all(
      color: AppColors.primary.c900,
      width: 1,
    );
  }

  static List<BoxShadow>? shadow(
    AppCardVariant variant,
  ) {
    if (variant != AppCardVariant.elevated) {
      return null;
    }

    return AppShadow.md;
  }
}
