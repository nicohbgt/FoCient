import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import '../icon button/icon_button.dart';
import 'variants/top_bar_variant.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.actions = const [],
    this.bottom,
    this.centerTitle = false,
    this.height = 56,
    this.padding,
    this.backgroundColor,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;

  final bool centerTitle;
  final double height;

  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: AppSpacing.s20,
          ),
      color: backgroundColor ?? AppColors.neutral.c0,
      child: Row(
        children: [
          if (leading != null) leading! else const SizedBox(width: 40),
          const SizedBox(width: AppSpacing.s16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: centerTitle
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                if (title != null) title!,
                if (subtitle != null) ...[
                  const SizedBox(height: AppSpacing.s4),
                  subtitle!,
                ],
              ],
            ),
          ),
          if (actions.isNotEmpty)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: actions,
            )
          else
            const SizedBox(width: 40),
        ],
      ),
    );
  }
}
