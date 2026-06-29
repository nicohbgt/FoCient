import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import 'onboarding_progress.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.title,
    required this.subtitle,
  });

  final int currentStep;
  final int totalSteps;

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnboardingProgress(
          currentStep: currentStep,
          totalSteps: totalSteps,
        ),
        const SizedBox(
          height: AppSpacing.s20,
        ),
        Text(
          'Step $currentStep of $totalSteps',
          style: AppTypography.labelMedium.copyWith(
            color: AppColors.primary.c500,
          ),
        ),
        const SizedBox(
          height: AppSpacing.s8,
        ),
        Text(
          title,
          style: AppTypography.headlineLarge,
        ),
        const SizedBox(
          height: AppSpacing.s8,
        ),
        Text(
          subtitle,
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.neutral.c500,
          ),
        ),
      ],
    );
  }
}
