import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

enum AppProgressType {
  linear,
  circular,
}

enum AppProgressSize {
  small,
  medium,
  large,
}

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({
    super.key,
    required this.value,
    this.type = AppProgressType.linear,
    this.size = AppProgressSize.medium,
    this.label,
    this.showPercentage = false,
    this.color,
    this.backgroundColor,
  });

  /// Value between 0.0 and 1.0
  final double value;

  final AppProgressType type;

  final AppProgressSize size;

  final String? label;

  final bool showPercentage;

  final Color? color;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final progress = value.clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null || showPercentage)
          Row(
            children: [
              if (label != null)
                Expanded(
                  child: Text(
                    label!,
                    style: AppTypography.body.bodyMedium,
                  ),
                ),
              if (showPercentage)
                Text(
                  '${(progress * 100).round()}%',
                  style: AppTypography.label.labelMedium.copyWith(
                    color: AppColors.neutral.c600,
                  ),
                ),
            ],
          ),
        if (label != null || showPercentage)
          const SizedBox(
            height: AppSpacing.s8,
          ),
        switch (type) {
          AppProgressType.linear => ClipRRect(
              borderRadius: BorderRadius.circular(
                AppRadius.full,
              ),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: _height,
                color: color ?? AppColors.primary.c500,
                backgroundColor: backgroundColor ?? AppColors.neutral.c200,
              ),
            ),
          AppProgressType.circular => SizedBox(
              width: _diameter,
              height: _diameter,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: _strokeWidth,
                color: color ?? AppColors.primary.c500,
                backgroundColor: backgroundColor ?? AppColors.neutral.c200,
              ),
            ),
        },
      ],
    );
  }

  double get _height {
    switch (size) {
      case AppProgressSize.small:
        return 4;

      case AppProgressSize.medium:
        return 6;

      case AppProgressSize.large:
        return 8;
    }
  }

  double get _diameter {
    switch (size) {
      case AppProgressSize.small:
        return 32;

      case AppProgressSize.medium:
        return 48;

      case AppProgressSize.large:
        return 64;
    }
  }

  double get _strokeWidth {
    switch (size) {
      case AppProgressSize.small:
        return 3;

      case AppProgressSize.medium:
        return 4;

      case AppProgressSize.large:
        return 5;
    }
  }
}
