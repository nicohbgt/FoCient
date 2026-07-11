import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Improve your life with FoCient',
          style: AppTypography.headlineMedium,
        ),
        SizedBox(
          height: AppSpacing.s12,
        ),
        Text(
          'Plan smarter, focus deeper, and accomplish your goals with AI-powered productivity.',
          style: AppTypography.bodyMedium,
        ),
      ],
    );
  }
}
