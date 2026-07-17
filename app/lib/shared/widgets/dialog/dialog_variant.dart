import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum DialogVariant {
  information,
  success,
  warning,
  error,
}

extension DialogVariantExtension on DialogVariant {
  Color get iconColor {
    switch (this) {
      case DialogVariant.information:
        return AppColors.info.c700;

      case DialogVariant.success:
        return AppColors.success.c700;

      case DialogVariant.warning:
        return AppColors.warning.c700;

      case DialogVariant.error:
        return AppColors.error.c700;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case DialogVariant.information:
        return AppColors.info.c100;

      case DialogVariant.success:
        return AppColors.success.c100;

      case DialogVariant.warning:
        return AppColors.warning.c100;

      case DialogVariant.error:
        return AppColors.error.c100;
    }
  }

  IconData get icon {
    switch (this) {
      case DialogVariant.information:
        return Icons.info_outline;

      case DialogVariant.success:
        return Icons.check_circle_outline;

      case DialogVariant.warning:
        return Icons.warning_amber_rounded;

      case DialogVariant.error:
        return Icons.error_outline;
    }
  }
}
