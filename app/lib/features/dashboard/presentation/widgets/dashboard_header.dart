import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
    required this.userName,
    this.greeting,
    this.message,
  });

  final String userName;

  final String? greeting;

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          greeting ?? _greeting(),
          style: AppTypography.labelLarge.copyWith(
            color: AppColors.neutral.c500,
          ),
        ),
        const SizedBox(
          height: AppSpacing.xs,
        ),
        Text(
          userName,
          style: AppTypography.headingMedium,
        ),
        const SizedBox(
          height: AppSpacing.sm,
        ),
        Text(
          message ?? "Today is a great day to accomplish your goals.",
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.neutral.c500,
          ),
        ),
      ],
    );
  }

  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning 👋";
    }

    if (hour < 17) {
      return "Good Afternoon 👋";
    }

    return "Good Evening 👋";
  }
}
