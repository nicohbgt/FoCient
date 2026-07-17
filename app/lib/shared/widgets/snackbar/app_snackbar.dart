import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import 'snackbar_variant.dart';

class AppSnackbar {
  AppSnackbar._();

  static void show(
    BuildContext context, {
    required String message,
    SnackbarVariant variant = SnackbarVariant.information,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: duration,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s16,
              vertical: AppSpacing.s12,
            ),
            decoration: BoxDecoration(
              color: variant.backgroundColor,
              borderRadius: BorderRadius.circular(
                AppRadius.r12,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  variant.icon,
                  color: AppColors.neutral.c0,
                ),
                const SizedBox(
                  width: AppSpacing.s12,
                ),
                Expanded(
                  child: Text(
                    message,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.neutral.c0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
