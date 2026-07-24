import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

import '../../domain/entities/analytics.dart';

class AnalyticsOverviewCard extends StatelessWidget {
  const AnalyticsOverviewCard({
    super.key,
    required this.analytics,
  });

  final AnalyticsData analytics;

  @override
  Widget build(BuildContext context) {
    final completionRate = analytics.completionRate;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.s20),
      decoration: BoxDecoration(
        color: AppColors.primary.c500,
        borderRadius: BorderRadius.circular(
          AppRadius.r12,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Productivity Overview',
            style: AppTypography.titleMedium.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s20,
          ),
          Text(
            '${(completionRate * 100).toStringAsFixed(0)}%',
            style: AppTypography.displayMedium.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s12,
          ),
          LinearProgressIndicator(
            value: completionRate,
            minHeight: 8,
            borderRadius: BorderRadius.circular(
              AppRadius.full,
            ),
            backgroundColor: Colors.white24,
            valueColor: const AlwaysStoppedAnimation(
              Colors.white,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s20,
          ),
          Row(
            children: [
              Expanded(
                child: _OverviewItem(
                  label: 'Completed',
                  value: analytics.completedTasks.toString(),
                ),
              ),
              Expanded(
                child: _OverviewItem(
                  label: 'Pending',
                  value: analytics.pendingTasks.toString(),
                ),
              ),
              Expanded(
                child: _OverviewItem(
                  label: 'Total',
                  value: analytics.totalTasks.toString(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OverviewItem extends StatelessWidget {
  const _OverviewItem({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: AppTypography.headlineSmall.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: AppSpacing.s4,
        ),
        Text(
          label,
          style: AppTypography.bodySmall.copyWith(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
