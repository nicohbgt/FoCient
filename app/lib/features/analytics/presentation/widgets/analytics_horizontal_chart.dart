import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class AnalyticsChartItem {
  const AnalyticsChartItem({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final int value;
  final Color color;
}

class AnalyticsHorizontalChart extends StatelessWidget {
  const AnalyticsHorizontalChart({
    super.key,
    required this.items,
  });

  final List<AnalyticsChartItem> items;

  @override
  Widget build(BuildContext context) {
    final int maxValue = items.isEmpty
        ? 1
        : items.map((e) => e.value).reduce((a, b) => a > b ? a : b);

    return Column(
      children: items.map((item) {
        final progress = item.value / maxValue;

        return Padding(
          padding: const EdgeInsets.only(
            bottom: AppSpacing.s20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      item.label,
                      style: AppTypography.bodyMedium,
                    ),
                  ),
                  Text(
                    item.value.toString(),
                    style: AppTypography.labelMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: AppSpacing.s8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppRadius.full,
                ),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 10,
                  backgroundColor: AppColors.neutral.c200,
                  valueColor: AlwaysStoppedAnimation(
                    item.color,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
