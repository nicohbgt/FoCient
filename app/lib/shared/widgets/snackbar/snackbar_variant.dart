import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum SnackbarVariant {
  information,
  success,
  warning,
  error,
}

extension SnackbarVariantExtension on SnackbarVariant {
  Color get backgroundColor {
    switch (this) {
      case SnackbarVariant.information:
        return AppColors.info.c700;

      case SnackbarVariant.success:
        return AppColors.success.c700;

      case SnackbarVariant.warning:
        return AppColors.warning.c700;

      case SnackbarVariant.error:
        return AppColors.error.c700;
    }
  }

  IconData get icon {
    switch (this) {
      case SnackbarVariant.information:
        return Icons.info_outline;

      case SnackbarVariant.success:
        return Icons.check_circle_outline;

      case SnackbarVariant.warning:
        return Icons.warning_amber_rounded;

      case SnackbarVariant.error:
        return Icons.error_outline;
    }
  }
}
