import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';
import '../../../../design system/tokens/typography/app_typography.dart';

class TopBarStyle {
  const TopBarStyle._();

  static Color get backgroundColor => AppColors.primary.c100;

  static Color get titleColor => AppColors.primary.c900;

  static Color get subtitleColor => AppColors.primary.c900;

  static TextStyle get titleStyle => AppTypography.titleMedium;

  static TextStyle get subtitleStyle => AppTypography.bodySmall;
}
