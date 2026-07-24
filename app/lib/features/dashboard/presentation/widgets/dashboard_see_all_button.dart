import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class DashboardSeeAllButton extends StatelessWidget {
  const DashboardSeeAllButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onTap,
      iconAlignment: IconAlignment.end,
      icon: const Icon(Icons.arrow_forward_rounded),
      label: Text(
        'See All',
        style: AppTypography.labelLarge.copyWith(
          color: AppColors.primary.c500,
        ),
      ),
    );
  }
}
