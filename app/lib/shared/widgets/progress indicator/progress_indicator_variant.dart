import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum ProgressIndicatorVariant {
  primary,
  success,
  warning,
  error,
}

extension ProgressIndicatorVariantExtension on ProgressIndicatorVariant {
  Color get color {
    switch (this) {
      case ProgressIndicatorVariant.primary:
        return AppColors.primary.c500;

      case ProgressIndicatorVariant.success:
        return AppColors.success.c500;

      case ProgressIndicatorVariant.warning:
        return AppColors.warning.c500;

      case ProgressIndicatorVariant.error:
        return AppColors.error.c500;
    }
  }
}
