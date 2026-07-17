import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum IconButtonVariant {
  filled,
  outlined,
  ghost,
}

extension IconButtonVariantExtension on IconButtonVariant {
  Color get backgroundColor {
    switch (this) {
      case IconButtonVariant.filled:
        return AppColors.primary.c500;

      case IconButtonVariant.outlined:
        return AppColors.neutral.c0;

      case IconButtonVariant.ghost:
        return Colors.transparent;
    }
  }

  Color get iconColor {
    switch (this) {
      case IconButtonVariant.filled:
        return AppColors.neutral.c0;

      case IconButtonVariant.outlined:
        return AppColors.neutral.c700;

      case IconButtonVariant.ghost:
        return AppColors.neutral.c700;
    }
  }

  BorderSide? get border {
    switch (this) {
      case IconButtonVariant.filled:
        return null;

      case IconButtonVariant.outlined:
        return BorderSide(
          color: AppColors.neutral.c300,
        );

      case IconButtonVariant.ghost:
        return null;
    }
  }
}
