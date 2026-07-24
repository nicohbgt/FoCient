import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/theme/app_radius.dart';

class OnboardingProgress extends StatelessWidget {
  const OnboardingProgress({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    final progress = currentStep / totalSteps;

    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppRadius.full,
      ),
      child: LinearProgressIndicator(
        value: progress,
        minHeight: 8,
        backgroundColor: AppColors.neutral.c200,
        valueColor: AlwaysStoppedAnimation(
          AppColors.primary.c500,
        ),
      ),
    );
  }
}
