import '../../../../app/theme/app_spacing.dart';

enum ChipSize {
  small,
  medium,
  large,
}

extension ChipSizeExtension on ChipSize {
  double get height {
    switch (this) {
      case ChipSize.small:
        return 28;

      case ChipSize.medium:
        return 36;

      case ChipSize.large:
        return 44;
    }
  }

  double get horizontalPadding {
    switch (this) {
      case ChipSize.small:
        return AppSpacing.s8;

      case ChipSize.medium:
        return AppSpacing.s12;

      case ChipSize.large:
        return AppSpacing.s16;
    }
  }
}
