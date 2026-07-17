import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

enum CardVariant {
  elevated,
  outlined,
  filled,
}

extension CardVariantExtension on CardVariant {
  Color get backgroundColor {
    switch (this) {
      case CardVariant.elevated:
        return AppColors.neutral.c0;

      case CardVariant.outlined:
        return AppColors.neutral.c0;

      case CardVariant.filled:
        return AppColors.neutral.c100;
    }
  }

  Border? get border {
    switch (this) {
      case CardVariant.elevated:
        return null;

      case CardVariant.outlined:
        return Border.all(
          color: AppColors.neutral.c200,
          width: 1,
        );

      case CardVariant.filled:
        return null;
    }
  }

  List<BoxShadow>? get shadow {
    switch (this) {
      case CardVariant.elevated:
        return [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ];

      case CardVariant.outlined:
        return null;

      case CardVariant.filled:
        return null;
    }
  }
}
