import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import '../../domain/entities/task.dart';
import '../widgets/task_scaffold.dart';

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return TaskScaffold(
      title: 'Task Detail',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TaskInfoCard(task: task),
            const SizedBox(height: AppSpacing.s24),
            Text(
              'Description',
              style: AppTypography.titleMedium,
            ),
            const SizedBox(height: AppSpacing.s12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.s16),
              decoration: BoxDecoration(
                color: AppColors.neutral.c0,
                borderRadius: BorderRadius.circular(AppRadius.r16),
                border: Border.all(
                  color: AppColors.neutral.c200,
                ),
              ),
              child: Text(
                task.description,
                style: AppTypography.bodyMedium,
              ),
            ),
            const SizedBox(height: AppSpacing.s32),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  context.push(
                    AppRoutes.editTask,
                    extra: task,
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text(
                  'Edit Task',
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.s12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  // TODO:
                  // Show Delete Dialog
                },
                icon: const Icon(Icons.delete_outline),
                label: const Text(
                  'Delete Task',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TaskInfoCard extends StatelessWidget {
  const _TaskInfoCard({
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.s20),
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
          Text(
            task.title,
            style: AppTypography.headlineSmall,
          ),
          const SizedBox(
            height: AppSpacing.s12,
          ),
          Wrap(
            spacing: AppSpacing.s8,
            runSpacing: AppSpacing.s8,
            children: [
              _InfoChip(
                icon: Icons.folder_outlined,
                label: task.category,
              ),
              _InfoChip(
                icon: Icons.flag_outlined,
                label: _priority,
              ),
              _InfoChip(
                icon: Icons.event_outlined,
                label: _date,
              ),
              _InfoChip(
                icon: Icons.schedule,
                label: _time,
              ),
            ],
          ),
        ],
      ),
    );
  }

  String get _priority {
    switch (task.priority) {
      case TaskPriority.low:
        return 'Low';

      case TaskPriority.medium:
        return 'Medium';

      case TaskPriority.high:
        return 'High';
    }
  }

  String get _date {
    return '${task.date.day}/${task.date.month}/${task.date.year}';
  }

  String get _time {
    return '${_format(task.startTime)} - ${_format(task.endTime)}';
  }

  String _format(DateTime value) {
    final h = value.hour.toString().padLeft(2, '0');
    final m = value.minute.toString().padLeft(2, '0');

    return '$h:$m';
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.s12,
        vertical: AppSpacing.s8,
      ),
      decoration: BoxDecoration(
        color: AppColors.neutral.c100,
        borderRadius: BorderRadius.circular(
          AppRadius.full,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
          ),
          const SizedBox(
            width: AppSpacing.s8,
          ),
          Text(
            label,
            style: AppTypography.labelMedium,
          ),
        ],
      ),
    );
  }
}
