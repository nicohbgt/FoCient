import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/router/app_routes.dart';

import '../../../task/domain/entities/task.dart';
import '../../../task/presentation/providers/tasks_provider.dart';
import '../widgets/dashboard_scaffold.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/dashboard_progress_card.dart';
import '../widgets/dashboard_current_focus.dart';
import '../widgets/dashboard_priority_section.dart';
import '../widgets/dashboard_quick_action.dart';
import '../widgets/dashboard_task_list.dart';

class DashboardHomePage extends ConsumerWidget {
  const DashboardHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksState = ref.watch(tasksProvider);
    final tasks = tasksState.valueOrNull ?? const <Task>[];

    final completed =
        tasks.where((t) => t.status == TaskStatus.completed).length;
    final total = tasks.length;

    final todayTasks = tasks.where((t) {
      final now = DateTime.now();
      final d = t.date;
      return d.year == now.year && d.month == now.month && d.day == now.day;
    }).toList();

    final pendingCount =
        todayTasks.where((t) => t.status != TaskStatus.completed).length;

    final message = total == 0
        ? 'No tasks yet. Add some to get started!'
        : pendingCount == 0
            ? 'All done for today! Great work!'
            : 'You have $pendingCount task${pendingCount == 1 ? '' : 's'} waiting today.';

    return DashboardScaffold(
      currentIndex: 0,
      onDestinationSelected: (index) {},
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          top: AppSpacing.xxl,
          bottom: AppSpacing.xxxl,
        ),
        children: [
          DashboardHeader(
            userName: 'User',
            message: message,
          ),
          const SizedBox(height: AppSpacing.xxl),
          DashboardProgressCard(
            completedTasks: completed,
            totalTasks: total,
          ),
          const SizedBox(height: AppSpacing.xxl),
          DashboardCurrentFocus(),
          const SizedBox(height: AppSpacing.xxxl),
          DashboardQuickAction(
            onTap: () => context.push(AppRoutes.createTask),
          ),
          const SizedBox(height: AppSpacing.xxxl),
          DashboardPrioritySection(),
          const SizedBox(height: AppSpacing.xxxl),
          const DashboardTaskList(),
          const SizedBox(height: AppSpacing.xxxl),
        ],
      ),
    );
  }
}
