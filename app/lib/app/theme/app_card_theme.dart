import 'package:flutter/material.dart';

import '../design system/tokens/radius/radius.dart';

import 'app_color_scheme.dart';

class AppCardTheme {
  const AppCardTheme._();

  static CardThemeData get light {
    return CardThemeData(
      color: AppColorScheme.light.surface,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.r16),
        side: BorderSide(
          color: AppColorScheme.light.outlineVariant,
        ),
      ),
    );
  }

  static CardThemeData get dark {
    return CardThemeData(
      color: AppColorScheme.dark.surface,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.r16),
        side: BorderSide(
          color: AppColorScheme.dark.outlineVariant,
        ),
      ),
    );
  }
}
