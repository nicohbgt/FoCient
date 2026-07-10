import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class DashboardProgressCard extends StatelessWidget {
  const DashboardProgressCard({
    super.key,
    required this.completedTasks,
    required this.totalTasks,
    this.title = "Today's Progress",
    this.subtitle,
  });

  final int completedTasks;
  final int totalTasks;

  final String title;
  final String? subtitle;

  double get progress {
    if (totalTasks == 0) return 0;
    return completedTasks / totalTasks;
  }

  @override
  Widget build(BuildContext context) {
    final percentage = (progress * 100).round();

    return Container(
      padding: const EdgeInsets.all(
        AppSpacing.s20,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.c500,
        borderRadius: BorderRadius.circular(
          AppRadius.r16,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.labelLarge.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s8,
          ),
          Text(
            "$percentage%",
            style: AppTypography.displayMedium.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: AppSpacing.s16,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(
              AppRadius.full,
            ),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: Colors.white24,
              valueColor: const AlwaysStoppedAnimation(
                Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: AppSpacing.s12,
          ),
          Text(
            "$completedTasks of $totalTasks tasks completed",
            style: AppTypography.bodyMedium.copyWith(
              color: Colors.white,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(
              height: AppSpacing.s4,
            ),
            Text(
              subtitle!,
              style: AppTypography.bodySmall.copyWith(
                color: Colors.white70,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
