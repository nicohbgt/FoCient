import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class WorkStyleCard extends StatelessWidget {
  const WorkStyleCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final String description;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        AppRadius.r16,
      ),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(AppSpacing.s20),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary.c50 : Colors.white,
          borderRadius: BorderRadius.circular(
            AppRadius.r16,
          ),
          border: Border.all(
            width: selected ? 2 : 1,
            color: selected ? AppColors.primary.c500 : AppColors.neutral.c200,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 32,
              color: AppColors.primary.c500,
            ),
            const SizedBox(width: AppSpacing.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.titleMedium,
                  ),
                  const SizedBox(
                    height: AppSpacing.s8,
                  ),
                  Text(
                    description,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.neutral.c500,
                    ),
                  ),
                ],
              ),
            ),
            if (selected)
              Icon(
                Icons.check_circle,
                color: AppColors.primary.c500,
              ),
          ],
        ),
      ),
    );
  }
}
