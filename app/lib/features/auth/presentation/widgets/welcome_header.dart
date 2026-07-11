import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FoCient',
          style: AppTypography.displayMedium,
        ),
        SizedBox(
          height: AppSpacing.s8,
        ),
        Text(
          'Make you keep productive without feeling overwhelmed and overloaded.',
          style: AppTypography.bodyMedium,
        ),
      ],
    );
  }
}
