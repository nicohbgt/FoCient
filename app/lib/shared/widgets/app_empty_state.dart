import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

class AppEmptyState extends StatelessWidget {
  const AppEmptyState({
    super.key,
    required this.title,
    required this.description,
    this.assetPath,
    this.icon,
    this.action,
    this.spacing = AppSpacing.s24,
  });

  final String title;
  final String description;

  final String? assetPath;
  final IconData? icon;

  final Widget? action;

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(
          AppSpacing.s24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildIllustration(),
            SizedBox(height: spacing),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTypography.title.titleLarge,
            ),
            const SizedBox(
              height: AppSpacing.s8,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: AppTypography.body.bodyMedium.copyWith(
                color: AppColors.neutral.c500,
              ),
            ),
            if (action != null) ...[
              const SizedBox(
                height: AppSpacing.s24,
              ),
              action!,
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildIllustration() {
    if (assetPath != null) {
      return Image.asset(
        assetPath!,
        width: 160,
        height: 160,
        fit: BoxFit.contain,
      );
    }

    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        color: AppColors.neutral.c100,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon ?? Icons.inbox_outlined,
        size: 48,
        color: AppColors.neutral.c400,
      ),
    );
  }
}
