import 'package:flutter/material.dart';

import 'app_badge_size.dart';
import 'app_badge_variant.dart';

import 'widgets/badge_widget.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({
    super.key,
    required this.label,
    this.leading,
    this.size = AppBadgeSize.medium,
    this.variant = AppBadgeVariant.primary,
  });

  final String label;

  final Widget? leading;

  final AppBadgeSize size;

  final AppBadgeVariant variant;

  @override
  Widget build(BuildContext context) {
    return BadgeWidget(
      label: label,
      leading: leading,
      size: size,
      variant: variant,
    );
  }
}
