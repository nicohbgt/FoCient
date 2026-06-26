import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

enum AppLoadingType {
  circular,
  linear,
}

enum AppLoadingSize {
  small,
  medium,
  large,
}

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    this.type = AppLoadingType.circular,
    this.size = AppLoadingSize.medium,
    this.message,
    this.color,
  });

  final AppLoadingType type;
  final AppLoadingSize size;

  final String? message;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        _buildIndicator(),

        if (message != null) ...[
          const SizedBox(
            height: AppSpacing.s16,
          ),

          Text(
            message!,
            textAlign: TextAlign.center,
            style: AppTypography.body.bodyMedium.copyWith(
              color: AppColors.neutral.c600,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildIndicator() {
    switch (type) {
      case AppLoadingType.circular:
        return SizedBox(
          width: _indicatorSize,
          height: _indicatorSize,
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: color ?? AppColors.primary.c500,
          ),
        );

      case AppLoadingType.linear:
        return SizedBox(
          width: 200,
          child: LinearProgressIndicator(
            minHeight: 6,
            color: color ?? AppColors.primary.c500,
            backgroundColor: AppColors.neutral.c200,
          ),
        );
    }
  }

  double get _indicatorSize {
    switch (size) {
      case AppLoadingSize.small:
        return 24;

      case AppLoadingSize.medium:
        return 36;

      case AppLoadingSize.large:
        return 48;
    }
  }
}
