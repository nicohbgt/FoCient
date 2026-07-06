import 'package:flutter/material.dart';

import '../../domain/entities/task.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
    this.onTap,
  });

  final Task task;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppRadius.r16),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.s16),
        decoration: BoxDecoration(
          color: AppColors.neutral.c0,
          borderRadius: BorderRadius.circular(AppRadius.r16),
          border: Border.all(
            color: AppColors.neutral.c200,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 6,
              height: 72,
              decoration: BoxDecoration(
                color: _priorityColor,
                borderRadius: BorderRadius.circular(
                  AppRadius.full,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.titleMedium.copyWith(
                      decoration: task.status == TaskStatus.completed
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.s4),
                  Text(
                    task.category,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.neutral.c500,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.s12),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule_outlined,
                        size: 16,
                        color: AppColors.neutral.c500,
                      ),
                      const SizedBox(width: AppSpacing.s4),
                      Text(
                        _timeText,
                        style: AppTypography.labelSmall.copyWith(
                          color: AppColors.neutral.c500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.s12),
            Icon(
              task.status == TaskStatus.completed
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: task.status == TaskStatus.completed
                  ? AppColors.success.c500
                  : AppColors.neutral.c300,
            ),
          ],
        ),
      ),
    );
  }

  String get _timeText {
    String format(DateTime time) {
      final hour = time.hour.toString().padLeft(2, '0');
      final minute = time.minute.toString().padLeft(2, '0');

      return '$hour:$minute';
    }

    return '${format(task.startTime)} - ${format(task.endTime)}';
  }

  Color get _priorityColor {
    switch (task.priority) {
      case TaskPriority.low:
        return AppColors.success.c500;

      case TaskPriority.medium:
        return AppColors.warning.c500;

      case TaskPriority.high:
        return AppColors.error.c500;
    }
  }
}
