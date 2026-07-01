import 'package:flutter/material.dart';

import '../widgets/dashboard_empty_state.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/dashboard_progress_card.dart';
import '../widgets/dashboard_quick_action.dart';
import '../widgets/dashboard_scaffold.dart';
import '../widgets/dashboard_section_title.dart';
import '../widgets/dashboard_task_card.dart';

import '../../../../app/theme/app_spacing.dart';

class DashboardHomePage extends StatelessWidget {
  const DashboardHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardScaffold(
      currentIndex: 0,
      onDestinationSelected: (index) {},
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: AppSpacing.s24,
          ),
          const DashboardHeader(
            userName: "John Doe",
          ),
          const SizedBox(
            height: AppSpacing.s24,
          ),
          const DashboardProgressCard(
            completedTasks: 2,
            totalTasks: 5,
          ),
          const SizedBox(
            height: AppSpacing.s24,
          ),
          DashboardQuickAction(
            icon: Icons.add_task,
            title: "Add Task",
            subtitle: "Create your next task",
            onTap: () {},
          ),
          const SizedBox(
            height: AppSpacing.s32,
          ),
          const DashboardSectionTitle(
            title: "Today's Tasks",
          ),
          const SizedBox(
            height: AppSpacing.s16,
          ),
          DashboardTaskCard(
            title: "Complete Flutter Dashboard",
            category: "Study",
            startTime: "09:00",
            endTime: "11:00",
            priority: TaskPriority.high,
            onTap: () {},
          ),
          const SizedBox(
            height: AppSpacing.s12,
          ),
          DashboardTaskCard(
            title: "Workout",
            category: "Health",
            startTime: "18:00",
            endTime: "19:00",
            priority: TaskPriority.low,
            isCompleted: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
