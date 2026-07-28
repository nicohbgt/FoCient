import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/router/app_routes.dart';
import '../../../task/domain/entities/task.dart';
import '../../../task/presentation/providers/tasks_provider.dart';
import 'dashboard_section_title.dart';
import 'dashboard_task_card.dart';
import 'dashboard_see_all_button.dart';

class DashboardTaskList extends ConsumerWidget {
  const DashboardTaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(tasksProvider);

    return Column(
      children: [
        DashboardSectionTitle(
          title: 'Today\'s Tasks',
          trailing: DashboardSeeAllButton(
            onTap: () {
              context.push(AppRoutes.taskList);
            },
          ),
        ),
        const SizedBox(
          height: AppSpacing.lg,
        ),
        ...tasks.when(
          loading: () => const [
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
          error: (error, _) => [
            Text(error.toString()),
          ],
          data: (tasks) => _todayTasks(tasks).map(
            (task) => Padding(
              padding: const EdgeInsets.only(
                bottom: AppSpacing.md,
              ),
              child: DashboardTaskCard(
                title: task.title,
                category: task.category,
                startTime: _formatTime(task.startTime),
                endTime: _formatTime(task.endTime),
                priority: task.priority,
                isCompleted: task.status == TaskStatus.completed,
                onTap: () => context.push(
                  AppRoutes.taskDetail,
                  extra: task,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Task> _todayTasks(List<Task> tasks) {
    final now = DateTime.now();

    return tasks.where((task) {
      final date = task.date;

      return date.year == now.year &&
          date.month == now.month &&
          date.day == now.day;
    }).toList();
  }

  String _formatTime(DateTime value) {
    final hour = value.hour.toString().padLeft(2, '0');
    final minute = value.minute.toString().padLeft(2, '0');

    return '$hour:$minute';
  }
}
