import 'package:flutter/material.dart';

import '../design system/tokens/radius/radius.dart';
import 'app_color_scheme.dart';
import 'app_text_theme.dart';

class AppInputTheme {
  const AppInputTheme._();

  static InputDecorationTheme get light {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColorScheme.light.surface,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      hintStyle: AppTextTheme.light.bodyMedium?.copyWith(
        color: AppColorScheme.light.outline,
      ),
      labelStyle: AppTextTheme.light.bodyMedium,
      floatingLabelStyle: AppTextTheme.light.bodyMedium?.copyWith(
        color: AppColorScheme.light.primary,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.light.outline,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.light.outline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.light.primary,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.light.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.light.error,
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.light.outlineVariant,
        ),
      ),
      errorStyle: AppTextTheme.light.bodySmall?.copyWith(
        color: AppColorScheme.light.error,
      ),
    );
  }

  static InputDecorationTheme get dark {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColorScheme.dark.surface,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      hintStyle: AppTextTheme.dark.bodyMedium?.copyWith(
        color: AppColorScheme.dark.outline,
      ),
      labelStyle: AppTextTheme.dark.bodyMedium,
      floatingLabelStyle: AppTextTheme.dark.bodyMedium?.copyWith(
        color: AppColorScheme.dark.primary,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.dark.outline,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.dark.outline,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.dark.primary,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.dark.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.dark.error,
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        borderSide: BorderSide(
          color: AppColorScheme.dark.outlineVariant,
        ),
      ),
      errorStyle: AppTextTheme.dark.bodySmall?.copyWith(
        color: AppColorScheme.dark.error,
      ),
    );
  }
}
