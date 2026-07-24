import 'package:flutter/material.dart';

import 'app_font_family.dart';
import 'app_font_size.dart';
import 'app_font_weight.dart';
import 'app_letter_spacing.dart';
import 'app_line_height.dart';

class AppTypography {
  AppTypography._();

  // Display

  static const TextStyle displayLarge = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.displayLarge,
    fontWeight: AppFontWeight.bold,
    letterSpacing: AppLetterSpacing.display,
    height: AppLineHeight.displayLarge / AppFontSize.displayLarge,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.displayMedium,
    fontWeight: AppFontWeight.bold,
    letterSpacing: AppLetterSpacing.display,
    height: AppLineHeight.displayMedium / AppFontSize.displayMedium,
  );

  // Headline

  static const TextStyle headingExtraLarge = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.headingExtraLarge,
    fontWeight: AppFontWeight.bold,
    letterSpacing: AppLetterSpacing.heading1,
    height: AppLineHeight.headingExtraLarge / AppFontSize.headingExtraLarge,
  );

  static const TextStyle headingLarge = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.headingLarge,
    fontWeight: AppFontWeight.semiBold,
    letterSpacing: AppLetterSpacing.heading1,
    height: AppLineHeight.headingLarge / AppFontSize.headingLarge,
  );

  static const TextStyle headingMedium = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.headingMedium,
    fontWeight: AppFontWeight.semiBold,
    letterSpacing: AppLetterSpacing.heading2,
    height: AppLineHeight.headingMedium / AppFontSize.headingMedium,
  );

  // Title

  static const TextStyle titleLarge = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.titleLarge,
    fontWeight: AppFontWeight.semiBold,
    letterSpacing: AppLetterSpacing.title1,
    height: AppLineHeight.titleLarge / AppFontSize.titleLarge,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.titleMedium,
    fontWeight: AppFontWeight.semiBold,
    letterSpacing: AppLetterSpacing.title2,
    height: AppLineHeight.titleMedium / AppFontSize.titleMedium,
  );

  // Body

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.bodyLarge,
    fontWeight: AppFontWeight.regular,
    letterSpacing: AppLetterSpacing.body,
    height: AppLineHeight.bodyLarge / AppFontSize.bodyLarge,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.bodyMedium,
    fontWeight: AppFontWeight.regular,
    letterSpacing: AppLetterSpacing.body,
    height: AppLineHeight.bodyMedium / AppFontSize.bodyMedium,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.bodySmall,
    fontWeight: AppFontWeight.regular,
    letterSpacing: AppLetterSpacing.body,
    height: AppLineHeight.bodySmall / AppFontSize.bodySmall,
  );

  // Label

  static const TextStyle labelLarge = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.labelLarge,
    fontWeight: AppFontWeight.medium,
    letterSpacing: AppLetterSpacing.label1,
    height: AppLineHeight.labelLarge / AppFontSize.labelLarge,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.labelMedium,
    fontWeight: AppFontWeight.medium,
    letterSpacing: AppLetterSpacing.label2,
    height: AppLineHeight.labelMedium / AppFontSize.labelMedium,
  );

  // Caption

  static const TextStyle caption = TextStyle(
    fontFamily: AppFontFamily.inter,
    fontSize: AppFontSize.caption,
    fontWeight: AppFontWeight.medium,
    letterSpacing: AppLetterSpacing.caption,
    height: AppLineHeight.caption / AppFontSize.caption,
  );
}
