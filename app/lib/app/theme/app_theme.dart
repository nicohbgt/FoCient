import 'package:flutter/material.dart';

import 'app_button_theme.dart';
import 'app_card_theme.dart';
import 'app_color_scheme.dart';
import 'app_input_theme.dart';
import 'app_navigation_theme.dart';
import 'app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: AppColorScheme.light,
      textTheme: AppTextTheme.light,
      scaffoldBackgroundColor: AppColorScheme.light.surface,
      canvasColor: AppColorScheme.light.surface,
      appBarTheme: AppNavigationTheme.lightAppBar,
      elevatedButtonTheme: AppButtonTheme.light,
      outlinedButtonTheme: AppButtonTheme.lightOutlined,
      textButtonTheme: AppButtonTheme.lightText,
      inputDecorationTheme: AppInputTheme.light,
      cardTheme: AppCardTheme.light,
      navigationBarTheme: AppNavigationTheme.lightNavigationBar,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.standard,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: AppColorScheme.dark,
      textTheme: AppTextTheme.dark,
      scaffoldBackgroundColor: AppColorScheme.dark.surface,
      canvasColor: AppColorScheme.dark.surface,
      appBarTheme: AppNavigationTheme.darkAppBar,
      elevatedButtonTheme: AppButtonTheme.dark,
      outlinedButtonTheme: AppButtonTheme.darkOutlined,
      textButtonTheme: AppButtonTheme.darkText,
      inputDecorationTheme: AppInputTheme.dark,
      cardTheme: AppCardTheme.dark,
      navigationBarTheme: AppNavigationTheme.darkNavigationBar,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.standard,
    );
  }
}
