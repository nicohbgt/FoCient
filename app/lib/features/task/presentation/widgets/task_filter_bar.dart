import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import 'task_filter_chip.dart';

class TaskFilterBar extends StatelessWidget {
  const TaskFilterBar({
    super.key,
    required this.selectedFilter,
    required this.onSelected,
  });

  final String selectedFilter;
  final ValueChanged<String> onSelected;

  static const filters = [
    'All',
    'Today',
    'High',
    'Completed',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filters.map((filter) {
          return Padding(
            padding: const EdgeInsets.only(
              right: AppSpacing.s8,
            ),
            child: TaskFilterChip(
              label: filter,
              selected: selectedFilter == filter,
              onTap: () => onSelected(filter),
            ),
          );
        }).toList(),
      ),
    );
  }
}
