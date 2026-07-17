import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

import 'divider_variant.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.variant = DividerVariant.horizontal,
    this.color,
    this.thickness = 1,
    this.indent = 0,
    this.endIndent = 0,
  });

  final DividerVariant variant;

  final Color? color;

  final double thickness;

  final double indent;

  final double endIndent;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case DividerVariant.horizontal:
        return Divider(
          color: color ?? AppColors.neutral.c200,
          thickness: thickness,
          indent: indent,
          endIndent: endIndent,
          height: thickness,
        );

      case DividerVariant.vertical:
        return VerticalDivider(
          color: color ?? AppColors.neutral.c200,
          thickness: thickness,
          indent: indent,
          endIndent: endIndent,
          width: thickness,
        );
    }
  }
}
