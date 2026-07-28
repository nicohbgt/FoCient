import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/radius/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class TaskEmptyState extends StatelessWidget {
  const TaskEmptyState({
    super.key,
    this.onCreateTask,
  });

  final VoidCallback? onCreateTask;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: AppColors.primary.c50,
                borderRadius: BorderRadius.circular(
                  AppRadius.full,
                ),
              ),
              child: Icon(
                Icons.task_alt_outlined,
                size: 48,
                color: AppColors.primary.c500,
              ),
            ),
            const SizedBox(
              height: AppSpacing.xxl,
            ),
            Text(
              'No Tasks Yet',
              style: AppTypography.headingMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSpacing.md,
            ),
            Text(
              'Start organizing your day by creating your first task.',
              textAlign: TextAlign.center,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.neutral.c500,
              ),
            ),
            const SizedBox(
              height: AppSpacing.xxl,
            ),
            FilledButton.icon(
              onPressed: onCreateTask,
              icon: const Icon(Icons.add),
              label: const Text(
                'Create Task',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
