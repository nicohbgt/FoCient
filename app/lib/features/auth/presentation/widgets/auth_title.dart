import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTypography.headlineLarge,
        ),
        const SizedBox(
          height: AppSpacing.s12,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.neutral.c500,
          ),
        ),
      ],
    );
  }
}
