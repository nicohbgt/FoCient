import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_typography.dart';

enum AppSnackbarType {
  success,
  warning,
  error,
  info,
}

class AppSnackbar {
  AppSnackbar._();

  static void show(
    BuildContext context, {
    required String message,
    AppSnackbarType type = AppSnackbarType.info,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: duration,
          behavior: SnackBarBehavior.floating,
          backgroundColor: _backgroundColor(type),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
          ),
          content: Row(
            children: [
              Icon(
                _icon(type),
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: AppTypography.bodyMedium.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          action: actionLabel != null
              ? SnackBarAction(
                  label: actionLabel,
                  textColor: Colors.white,
                  onPressed: onAction ?? () {},
                )
              : null,
        ),
      );
  }

  static Color _backgroundColor(
    AppSnackbarType type,
  ) {
    switch (type) {
      case AppSnackbarType.success:
        return AppColors.success.c500;

      case AppSnackbarType.warning:
        return AppColors.warning.c500;

      case AppSnackbarType.error:
        return AppColors.error.c500;

      case AppSnackbarType.info:
        return AppColors.info.c500;
    }
  }

  static IconData _icon(
    AppSnackbarType type,
  ) {
    switch (type) {
      case AppSnackbarType.success:
        return Icons.check_circle;

      case AppSnackbarType.warning:
        return Icons.warning_amber_rounded;

      case AppSnackbarType.error:
        return Icons.error_outline;

      case AppSnackbarType.info:
        return Icons.info_outline;
    }
  }
}
