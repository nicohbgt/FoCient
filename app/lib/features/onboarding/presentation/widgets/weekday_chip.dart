import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class WeekdayChip extends StatelessWidget {
  const WeekdayChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        label,
        style: AppTypography.label.labelMedium,
      ),
      selected: selected,
      onSelected: (_) => onTap(),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.s8,
        vertical: AppSpacing.s4,
      ),
      selectedColor: AppColors.primary.c100,
      checkmarkColor: AppColors.primary.c600,
      side: BorderSide(
        color: selected ? AppColors.primary.c500 : AppColors.neutral.c300,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.r999,
        ),
      ),
    );
  }
}
