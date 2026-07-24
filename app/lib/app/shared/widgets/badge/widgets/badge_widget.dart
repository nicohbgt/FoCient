import 'package:flutter/material.dart';

import '../app_badge_size.dart';
import '../app_badge_variant.dart';

import '../helpers/badge_constants.dart';
import '../helpers/badge_style.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    super.key,
    required this.label,
    required this.variant,
    required this.size,
    this.leading,
  });

  final String label;

  final Widget? leading;

  final AppBadgeVariant variant;

  final AppBadgeSize size;

  double get height {
    switch (size) {
      case AppBadgeSize.small:
        return BadgeConstants.smallHeight;

      case AppBadgeSize.medium:
        return BadgeConstants.mediumHeight;
    }
  }

  double get radius {
    switch (size) {
      case AppBadgeSize.small:
        return BadgeConstants.smallRadius;

      case AppBadgeSize.medium:
        return BadgeConstants.mediumRadius;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: BadgeConstants.horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: BadgeStyle.backgroundColor(
          variant,
        ),
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(
              width: BadgeConstants.iconSpacing,
            ),
          ],
          Text(
            label,
            style: BadgeStyle.textStyle.copyWith(
              color: BadgeStyle.foregroundColor(
                variant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
