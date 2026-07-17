import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum StateVariant {
  information,
  success,
  warning,
  error,
}

extension StateVariantExtension on StateVariant {
  IconData get icon {
    switch (this) {
      case StateVariant.information:
        return Icons.inbox_outlined;

      case StateVariant.success:
        return Icons.check_circle_outline;

      case StateVariant.warning:
        return Icons.warning_amber_rounded;

      case StateVariant.error:
        return Icons.error_outline;
    }
  }

  Color get color {
    switch (this) {
      case StateVariant.information:
        return AppColors.info.c700;

      case StateVariant.success:
        return AppColors.success.c700;

      case StateVariant.warning:
        return AppColors.warning.c700;

      case StateVariant.error:
        return AppColors.error.c700;
    }
  }
}
