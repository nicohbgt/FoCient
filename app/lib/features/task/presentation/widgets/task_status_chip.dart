import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/radius/app_radius.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

import '../../domain/entities/task.dart';

class TaskStatusChip extends StatelessWidget {
  const TaskStatusChip({
    super.key,
    required this.status,
  });

  final TaskStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
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
            width: AppSpacing.xs,
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
    switch (status) {
      case TaskStatus.todo:
        return 'To Do';

      case TaskStatus.inProgress:
        return 'In Progress';

      case TaskStatus.completed:
        return 'Completed';
    }
  }

  IconData get _icon {
    switch (status) {
      case TaskStatus.todo:
        return Icons.radio_button_unchecked;

      case TaskStatus.inProgress:
        return Icons.timelapse;

      case TaskStatus.completed:
        return Icons.check_circle;
    }
  }

  Color get _backgroundColor {
    switch (status) {
      case TaskStatus.todo:
        return AppColors.neutral.c100;

      case TaskStatus.inProgress:
        return AppColors.primary.c50;

      case TaskStatus.completed:
        return AppColors.success.c100;
    }
  }

  Color get _foregroundColor {
    switch (status) {
      case TaskStatus.todo:
        return AppColors.neutral.c600;

      case TaskStatus.inProgress:
        return AppColors.primary.c600;

      case TaskStatus.completed:
        return AppColors.success.c700;
    }
  }
}
