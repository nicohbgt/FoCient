import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';

import 'card_variant.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(
      AppSpacing.s20,
    ),
    this.variant = CardVariant.elevated,
  });

  final Widget child;

  final VoidCallback? onTap;

  final EdgeInsetsGeometry padding;

  final CardVariant variant;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          AppRadius.r16,
        ),
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            color: variant.backgroundColor,
            borderRadius: BorderRadius.circular(
              AppRadius.r16,
            ),
            border: variant.border,
            boxShadow: variant.shadow,
          ),
          child: child,
        ),
      ),
    );
  }
}
