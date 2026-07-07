import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

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
        padding: const EdgeInsets.all(AppSpacing.s24),
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
              height: AppSpacing.s24,
            ),
            Text(
              'No Tasks Yet',
              style: AppTypography.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSpacing.s12,
            ),
            Text(
              'Start organizing your day by creating your first task.',
              textAlign: TextAlign.center,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.neutral.c500,
              ),
            ),
            const SizedBox(
              height: AppSpacing.s32,
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
