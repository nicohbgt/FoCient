import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import 'weekday_chip.dart';

class WeekdaySelector extends StatelessWidget {
  const WeekdaySelector({
    super.key,
    required this.selectedDays,
    required this.onToggle,
  });

  final Set<String> selectedDays;

  final ValueChanged<String> onToggle;

  static const _days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.s8,
      runSpacing: AppSpacing.s8,
      children: _days.map((day) {
        return WeekdayChip(
          label: day,
          selected: selectedDays.contains(day),
          onTap: () => onToggle(day),
        );
      }).toList(),
    );
  }
}
