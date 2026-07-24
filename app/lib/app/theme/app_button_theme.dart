import 'package:flutter/material.dart';

import '../design system/tokens/radius/radius.dart';

import 'app_color_scheme.dart';
import 'app_text_theme.dart';

class AppButtonTheme {
  const AppButtonTheme._();

  static ElevatedButtonThemeData get light {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(0, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
        ),
        backgroundColor: AppColorScheme.light.primary,
        foregroundColor: AppColorScheme.light.onPrimary,
        textStyle: AppTextTheme.light.labelLarge,
      ),
    );
  }

  static ElevatedButtonThemeData get dark {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(0, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
        ),
        backgroundColor: AppColorScheme.dark.primary,
        foregroundColor: AppColorScheme.dark.onPrimary,
        textStyle: AppTextTheme.dark.labelLarge,
      ),
    );
  }

  static OutlinedButtonThemeData get lightOutlined {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 48),
        side: BorderSide(
          color: AppColorScheme.light.outline,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
        ),
        foregroundColor: AppColorScheme.light.primary,
        textStyle: AppTextTheme.light.labelLarge,
      ),
    );
  }

  static OutlinedButtonThemeData get darkOutlined {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 48),
        side: BorderSide(
          color: AppColorScheme.dark.outline,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
        ),
        foregroundColor: AppColorScheme.dark.primary,
        textStyle: AppTextTheme.dark.labelLarge,
      ),
    );
  }

  static TextButtonThemeData get lightText {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColorScheme.light.primary,
        textStyle: AppTextTheme.light.labelLarge,
      ),
    );
  }

  static TextButtonThemeData get darkText {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColorScheme.dark.primary,
        textStyle: AppTextTheme.dark.labelLarge,
      ),
    );
  }
}
