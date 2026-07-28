import 'package:flutter/material.dart';

import 'app_color_scheme.dart';
import 'app_text_theme.dart';

class AppNavigationTheme {
  const AppNavigationTheme._();

  static AppBarTheme get lightAppBar {
    return AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: AppColorScheme.light.surface,
      foregroundColor: AppColorScheme.light.onSurface,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextTheme.light.titleLarge,
      iconTheme: IconThemeData(
        color: AppColorScheme.light.onSurface,
      ),
    );
  }

  static AppBarTheme get darkAppBar {
    return AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: AppColorScheme.dark.surface,
      foregroundColor: AppColorScheme.dark.onSurface,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextTheme.dark.titleLarge,
      iconTheme: IconThemeData(
        color: AppColorScheme.dark.onSurface,
      ),
    );
  }

  static NavigationBarThemeData get lightNavigationBar {
    return NavigationBarThemeData(
      backgroundColor: AppColorScheme.light.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      height: 72,
      indicatorColor: AppColorScheme.light.primaryContainer,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextTheme.light.labelMedium?.copyWith(
              color: AppColorScheme.light.primary,
            );
          }

          return AppTextTheme.light.labelMedium?.copyWith(
            color: AppColorScheme.light.onSurface,
          );
        },
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) {
          return IconThemeData(
            color: states.contains(WidgetState.selected)
                ? AppColorScheme.light.primary
                : AppColorScheme.light.onSurface,
          );
        },
      ),
    );
  }

  static NavigationBarThemeData get darkNavigationBar {
    return NavigationBarThemeData(
      backgroundColor: AppColorScheme.dark.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      height: 72,
      indicatorColor: AppColorScheme.dark.primaryContainer,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextTheme.dark.labelMedium?.copyWith(
              color: AppColorScheme.dark.primary,
            );
          }

          return AppTextTheme.dark.labelMedium?.copyWith(
            color: AppColorScheme.dark.onSurface,
          );
        },
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) {
          return IconThemeData(
            color: states.contains(WidgetState.selected)
                ? AppColorScheme.dark.primary
                : AppColorScheme.dark.onSurface,
          );
        },
      ),
    );
  }
}
