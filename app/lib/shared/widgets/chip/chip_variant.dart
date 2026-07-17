import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum ChipVariant {
  filled,
  outlined,
}

extension ChipVariantExtension on ChipVariant {
  Color get backgroundColor {
    switch (this) {
      case ChipVariant.filled:
        return AppColors.primary.c100;

      case ChipVariant.outlined:
        return AppColors.neutral.c0;
    }
  }

  Color get foregroundColor {
    switch (this) {
      case ChipVariant.filled:
        return AppColors.primary.c700;

      case ChipVariant.outlined:
        return AppColors.neutral.c700;
    }
  }

  Border? get border {
    switch (this) {
      case ChipVariant.filled:
        return null;

      case ChipVariant.outlined:
        return Border.all(
          color: AppColors.neutral.c300,
        );
    }
  }
}
