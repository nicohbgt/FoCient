import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/radius/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

import '../../domain/entities/task.dart';
import '../providers/tasks_provider.dart';
import '../widgets/task_scaffold.dart';

class TaskDetailPage extends ConsumerWidget {
  const TaskDetailPage({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TaskScaffold(
      title: 'Task Detail',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TaskInfoCard(task: task),
            const SizedBox(height: AppSpacing.xxl),
            Text(
              'Description',
              style: AppTypography.titleMedium,
            ),
            const SizedBox(height: AppSpacing.md),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.lg),
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
            const SizedBox(height: AppSpacing.xxxl),
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
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () async {
                  final shouldDelete = await showDialog<bool>(
                    context: context,
                    builder: (dialogContext) => AlertDialog(
                      title: const Text('Delete Task?'),
                      content: const Text(
                        'This action cannot be undone.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => dialogContext.pop(false),
                          child: const Text('Cancel'),
                        ),
                        FilledButton(
                          onPressed: () => dialogContext.pop(true),
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  );

                  if (shouldDelete != true || !context.mounted) return;

                  await ref.read(tasksProvider.notifier).deleteTask(task.id);

                  if (!context.mounted) return;

                  context.pop();
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
      padding: const EdgeInsets.all(AppSpacing.xl),
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
            style: AppTypography.headingMedium,
          ),
          const SizedBox(
            height: AppSpacing.md,
          ),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
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
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
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
            width: AppSpacing.sm,
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
