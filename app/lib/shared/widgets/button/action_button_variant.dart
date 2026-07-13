import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';

enum ActionButtonVariant {
  primary,
  destructive,
}

extension ActionButtonVariantExtension on ActionButtonVariant {
  Color get borderColor {
    switch (this) {
      case ActionButtonVariant.primary:
        return AppColors.primary.c500;

      case ActionButtonVariant.destructive:
        return AppColors.error.c500;
    }
  }

  Color get foregroundColor {
    switch (this) {
      case ActionButtonVariant.primary:
        return AppColors.primary.c700;

      case ActionButtonVariant.destructive:
        return AppColors.error.c700;
    }
  }
}
