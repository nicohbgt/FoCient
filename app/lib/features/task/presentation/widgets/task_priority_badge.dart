import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import '../../domain/entities/task.dart';

class TaskPriorityBadge extends StatelessWidget {
  const TaskPriorityBadge({
    super.key,
    required this.priority,
  });

  final TaskPriority priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.s12,
        vertical: AppSpacing.s6,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(
          AppRadius.full,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _icon,
            size: 16,
            color: _foregroundColor,
          ),
          const SizedBox(
            width: AppSpacing.s6,
          ),
          Text(
            _label,
            style: AppTypography.labelMedium.copyWith(
              color: _foregroundColor,
            ),
          ),
        ],
      ),
    );
  }

  String get _label {
    switch (priority) {
      case TaskPriority.low:
        return 'Low';
      case TaskPriority.medium:
        return 'Medium';
      case TaskPriority.high:
        return 'High';
    }
  }

  IconData get _icon {
    switch (priority) {
      case TaskPriority.low:
        return Icons.keyboard_double_arrow_down_rounded;
      case TaskPriority.medium:
        return Icons.remove_rounded;
      case TaskPriority.high:
        return Icons.keyboard_double_arrow_up_rounded;
    }
  }

  Color get _backgroundColor {
    switch (priority) {
      case TaskPriority.low:
        return AppColors.success.c50;
      case TaskPriority.medium:
        return AppColors.warning.c50;
      case TaskPriority.high:
        return AppColors.error.c50;
    }
  }

  Color get _foregroundColor {
    switch (priority) {
      case TaskPriority.low:
        return AppColors.success.c600;
      case TaskPriority.medium:
        return AppColors.warning.c600;
      case TaskPriority.high:
        return AppColors.error.c600;
    }
  }
}