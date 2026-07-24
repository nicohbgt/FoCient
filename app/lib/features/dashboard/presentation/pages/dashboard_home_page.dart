import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../widgets/dashboard_scaffold.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/dashboard_progress_card.dart';
import '../widgets/dashboard_current_focus.dart';
import '../widgets/dashboard_priority_section.dart';
import '../widgets/dashboard_quick_action.dart';

import '../../data/dashboard_dummy.dart';

class DashboardHomePage extends StatelessWidget {
  const DashboardHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardScaffold(
      currentIndex: 0,
      onDestinationSelected: (index) {},
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          top: AppSpacing.s24,
          bottom: AppSpacing.s32,
        ),
        children: [
          DashboardHeader(
            userName: DashboardDummy.userName,
            message: DashboardDummy.todayMessage,
          ),
          const SizedBox(
            height: AppSpacing.s24,
          ),
          DashboardProgressCard(
            completedTasks: DashboardDummy.completedTasks,
            totalTasks: DashboardDummy.totalTasks,
          ),
          const SizedBox(
            height: AppSpacing.s24,
          ),
          DashboardCurrentFocus(),
          const SizedBox(
            height: AppSpacing.s32,
          ),
          DashboardQuickAction(
            onTap: () {
              // TODO: Navigate to Create Task Page
            },
          ),
          const SizedBox(
            height: AppSpacing.s32,
          ),
          DashboardPrioritySection(),
          const SizedBox(
            height: AppSpacing.s32,
          ),
        ],
      ),
    );
  }
}
