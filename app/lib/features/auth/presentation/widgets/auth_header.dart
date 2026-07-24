import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';
import '../../../../app/design system/tokens/colors/app_colors.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
