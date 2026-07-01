import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class DashboardQuickAction extends StatelessWidget {
  const DashboardQuickAction({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.backgroundColor,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  final VoidCallback onTap;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        AppRadius.r16,
      ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          AppSpacing.s16,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primary.c50,
          borderRadius: BorderRadius.circular(
            AppRadius.r16,
          ),
          border: Border.all(
            color: AppColors.primary.c100,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.primary.c500,
                borderRadius: BorderRadius.circular(
                  AppRadius.r12,
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: AppSpacing.s16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.titleMedium,
                  ),
                  const SizedBox(
                    height: AppSpacing.s4,
                  ),
                  Text(
                    subtitle,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.neutral.c500,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
