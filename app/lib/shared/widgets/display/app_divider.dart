import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';

enum AppDividerDirection {
  horizontal,
  vertical,
}

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.direction = AppDividerDirection.horizontal,
    this.color,
    this.thickness = 1,
    this.indent = 0,
    this.endIndent = 0,
    this.spacing = AppSpacing.s16,
  });

  final AppDividerDirection direction;

  final Color? color;

  final double thickness;

  final double indent;

  final double endIndent;

  final double spacing;

  @override
  Widget build(BuildContext context) {
    if (direction == AppDividerDirection.vertical) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: spacing,
        ),
        child: VerticalDivider(
          color: color ?? AppColors.neutral.c200,
          thickness: thickness,
          indent: indent,
          endIndent: endIndent,
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: spacing,
      ),
      child: Divider(
        color: color ?? AppColors.neutral.c200,
        thickness: thickness,
        height: thickness,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}
