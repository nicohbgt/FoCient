import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import 'state_variant.dart';

class AppEmptyState extends StatelessWidget {
  const AppEmptyState({
    super.key,
    required this.title,
    required this.description,
    this.variant = StateVariant.information,
    this.action,
  });

  final String title;
  final String description;

  final StateVariant variant;

  final Widget? action;

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
            Icon(
              variant.icon,
              size: 64,
              color: variant.color,
            ),
            const SizedBox(
              height: AppSpacing.s24,
            ),
            Text(
              title,
              style: AppTypography.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSpacing.s8,
            ),
            Text(
              description,
              style: AppTypography.bodyMedium,
              textAlign: TextAlign.center,
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
}
