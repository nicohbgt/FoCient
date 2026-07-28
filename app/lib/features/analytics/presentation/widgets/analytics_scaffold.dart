import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class AnalyticsScaffold extends StatelessWidget {
  const AnalyticsScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.c50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.neutral.c50,
        foregroundColor: AppColors.neutral.c900,
        centerTitle: false,
        title: Text(
          'Analytics',
          style: AppTypography.headingMedium.copyWith(
            color: AppColors.neutral.c900,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
          ),
          child: child,
        ),
      ),
    );
  }
}
