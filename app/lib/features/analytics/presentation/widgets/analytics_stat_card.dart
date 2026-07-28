import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/radius/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class AnalyticsStatCard extends StatelessWidget {
  const AnalyticsStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final String value;

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        AppSpacing.lg,
      ),
      decoration: BoxDecoration(
        color: AppColors.neutral.c0,
        borderRadius: BorderRadius.circular(
          AppRadius.r16,
        ),
        border: Border.all(
          color: AppColors.neutral.c200,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(
                AppRadius.r12,
              ),
            ),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          const SizedBox(
            height: AppSpacing.lg,
          ),
          Text(
            value,
            style: AppTypography.headingMedium.copyWith(
              color: AppColors.neutral.c900,
            ),
          ),
          const SizedBox(
            height: AppSpacing.xs,
          ),
          Text(
            title,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.neutral.c500,
            ),
          ),
        ],
      ),
    );
  }
}
