import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../data/analytics_dummy.dart';

import '../widgets/analytics_horizontal_chart.dart';
import '../widgets/analytics_overview_card.dart';
import '../widgets/analytics_scaffold.dart';
import '../widgets/analytics_section_header.dart';
import '../widgets/analytics_stat_card.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final analytics = AnalyticsDummy.data;

    return AnalyticsScaffold(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnalyticsOverviewCard(
              analytics: analytics,
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
            const AnalyticsSectionHeader(
              title: 'Overview',
            ),
            const SizedBox(
              height: AppSpacing.s16,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.s16,
              mainAxisSpacing: AppSpacing.s16,
              childAspectRatio: 1.35,
              children: [
                AnalyticsStatCard(
                  title: 'Completed',
                  value: analytics.completedTasks.toString(),
                  icon: Icons.check_circle,
                  color: AppColors.success.c500,
                ),
                AnalyticsStatCard(
                  title: 'Pending',
                  value: analytics.pendingTasks.toString(),
                  icon: Icons.pending_actions,
                  color: AppColors.warning.c500,
                ),
                AnalyticsStatCard(
                  title: 'In Progress',
                  value: analytics.inProgressTasks.toString(),
                  icon: Icons.timelapse,
                  color: AppColors.primary.c500,
                ),
                AnalyticsStatCard(
                  title: 'Total Tasks',
                  value: analytics.totalTasks.toString(),
                  icon: Icons.task_alt,
                  color: AppColors.neutral.c700,
                ),
              ],
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
            const AnalyticsSectionHeader(
              title: 'Task Status',
            ),
            const SizedBox(
              height: AppSpacing.s16,
            ),
            AnalyticsHorizontalChart(
              items: [
                AnalyticsChartItem(
                  label: 'Completed',
                  value: analytics.completedTasks,
                  color: AppColors.success.c500,
                ),
                AnalyticsChartItem(
                  label: 'In Progress',
                  value: analytics.inProgressTasks,
                  color: AppColors.primary.c500,
                ),
                AnalyticsChartItem(
                  label: 'To Do',
                  value: analytics.todoTasks,
                  color: AppColors.warning.c500,
                ),
              ],
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
            const AnalyticsSectionHeader(
              title: 'Priority Distribution',
            ),
            const SizedBox(
              height: AppSpacing.s16,
            ),
            AnalyticsHorizontalChart(
              items: [
                AnalyticsChartItem(
                  label: 'High',
                  value: analytics.highPriorityTasks,
                  color: AppColors.error.c500,
                ),
                AnalyticsChartItem(
                  label: 'Medium',
                  value: analytics.mediumPriorityTasks,
                  color: AppColors.warning.c500,
                ),
                AnalyticsChartItem(
                  label: 'Low',
                  value: analytics.lowPriorityTasks,
                  color: AppColors.success.c500,
                ),
              ],
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
            const AnalyticsSectionHeader(
              title: 'Category Distribution',
            ),
            const SizedBox(
              height: AppSpacing.s16,
            ),
            AnalyticsHorizontalChart(
              items: analytics.categoryDistribution.entries.map((entry) {
                return AnalyticsChartItem(
                  label: entry.key,
                  value: entry.value,
                  color: AppColors.primary.c500,
                );
              }).toList(),
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
          ],
        ),
      ),
    );
  }
}
