import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

enum TaskPriority {
  low,
  medium,
  high,
}

class DashboardTaskCard extends StatelessWidget {
  const DashboardTaskCard({
    super.key,
    required this.title,
    required this.category,
    required this.startTime,
    required this.endTime,
    required this.priority,
    this.isCompleted = false,
    this.onTap,
  });

  final String title;
  final String category;

  final String startTime;
  final String endTime;

  final TaskPriority priority;

  final bool isCompleted;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        AppRadius.r16,
      ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          AppSpacing.s16,
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
        child: Row(
          children: [
            Container(
              width: 6,
              height: 56,
              decoration: BoxDecoration(
                color: _priorityColor,
                borderRadius: BorderRadius.circular(
                  AppRadius.full,
                ),
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
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.titleMedium.copyWith(
                      decoration:
                          isCompleted ? TextDecoration.lineThrough : null,
                    ),
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
                  const SizedBox(
                    height: AppSpacing.s8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule_outlined,
                        size: 16,
                        color: AppColors.neutral.c500,
                      ),
                      const SizedBox(
                        width: AppSpacing.s4,
                      ),
                      Text(
                        "$startTime - $endTime",
                        style: AppTypography.labelSmall.copyWith(
                          color: AppColors.neutral.c500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: AppSpacing.s12,
            ),
            Icon(
              isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
              color:
                  isCompleted ? AppColors.success.c500 : AppColors.neutral.c300,
            ),
          ],
        ),
      ),
    );
  }

  Color get _priorityColor {
    switch (priority) {
      case TaskPriority.low:
        return AppColors.success.c500;

      case TaskPriority.medium:
        return AppColors.warning.c500;

      case TaskPriority.high:
        return AppColors.error.c500;
    }
  }
}
