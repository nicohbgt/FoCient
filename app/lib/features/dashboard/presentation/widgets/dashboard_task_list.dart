import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../data/dashboard_dummy.dart';
import 'dashboard_section_title.dart';
import 'dashboard_task_card.dart';
import 'dashboard_see_all_button.dart';

class DashboardTaskList extends StatelessWidget {
  const DashboardTaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardSectionTitle(
          title: 'Today\'s Tasks',
          trailing: DashboardSeeAllButton(
            onTap: () {
              // TODO
            },
          ),
        ),
        const SizedBox(
          height: AppSpacing.s16,
        ),
        ...DashboardDummy.todayTasks.map(
          (task) => Padding(
            padding: const EdgeInsets.only(
              bottom: AppSpacing.s12,
            ),
            child: DashboardTaskCard(
              title: task.title,
              category: task.category,
              startTime: task.startTime,
              endTime: task.endTime,
              priority: task.priority,
              isCompleted: task.isCompleted,
            ),
          ),
        ),
      ],
    );
  }
}
