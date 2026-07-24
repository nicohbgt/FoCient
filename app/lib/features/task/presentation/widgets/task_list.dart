import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../domain/entities/task.dart';

import 'task_card.dart';
import 'task_empty_state.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.tasks,
    this.onTaskTap,
    this.onCreateTask,
  });

  final List<Task> tasks;

  final ValueChanged<Task>? onTaskTap;

  final VoidCallback? onCreateTask;

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return TaskEmptyState(
        onCreateTask: onCreateTask,
      );
    }

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: tasks.length,
      separatorBuilder: (_, __) => const SizedBox(
        height: AppSpacing.s12,
      ),
      itemBuilder: (context, index) {
        final task = tasks[index];

        return TaskCard(
          task: task,
          onTap: () => onTaskTap?.call(task),
        );
      },
    );
  }
}
