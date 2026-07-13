import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

import 'badge_variant.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({
    super.key,
    required this.label,
    required this.icon,
    required this.variant,
    this.width = 120,
    this.height = 36,
  });

  final String label;
  final IconData icon;
  final BadgeVariant variant;

  final double width;
  final double height;

  Color get _backgroundColor {
    switch (variant) {
      case BadgeVariant.success:
        return AppColors.success.c100;

      case BadgeVariant.warning:
        return AppColors.warning.c100;

      case BadgeVariant.error:
        return AppColors.error.c100;

      case BadgeVariant.neutral:
        return AppColors.neutral.c100;
    }
  }

  Color get _foregroundColor {
    switch (variant) {
      case BadgeVariant.success:
        return AppColors.success.c700;

      case BadgeVariant.warning:
        return AppColors.warning.c700;

      case BadgeVariant.error:
        return AppColors.error.c700;

      case BadgeVariant.neutral:
        return AppColors.neutral.c700;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.s12,
        vertical: AppSpacing.s8,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(
          AppRadius.r16,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16,
            color: _foregroundColor,
          ),
          const SizedBox(
            width: AppSpacing.s8,
          ),
          Flexible(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTypography.labelLarge.copyWith(
                color: _foregroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
