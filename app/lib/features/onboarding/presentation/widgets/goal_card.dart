import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({
    super.key,
    required this.title,
    required this.category,
    required this.priority,
    this.onTap,
  });

  final String title;
  final String category;
  final String priority;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        AppRadius.r12,
      ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          AppSpacing.s16,
        ),
        decoration: BoxDecoration(
          color: AppColors.neutral.c0,
          borderRadius: BorderRadius.circular(
            AppRadius.r12,
          ),
          border: Border.all(
            color: AppColors.neutral.c200,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: AppColors.primary.c500,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              width: AppSpacing.s16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.titleMedium,
                  ),
                  const SizedBox(
                    height: AppSpacing.s4,
                  ),
                  Text(
                    category,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.neutral.c500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s12,
                vertical: AppSpacing.s8,
              ),
              decoration: BoxDecoration(
                color: AppColors.primary.c100,
                borderRadius: BorderRadius.circular(
                  AppRadius.full,
                ),
              ),
              child: Text(
                priority,
                style: AppTypography.labelSmall.copyWith(
                  color: AppColors.primary.c700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
