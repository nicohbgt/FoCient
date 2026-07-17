import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum SwitchVariant {
  primary,
  success,
}

extension SwitchVariantExtension on SwitchVariant {
  Color get activeColor {
    switch (this) {
      case SwitchVariant.primary:
        return AppColors.primary.c500;

      case SwitchVariant.success:
        return AppColors.success.c500;
    }
  }
}
