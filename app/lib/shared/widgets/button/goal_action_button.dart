import 'package:flutter/material.dart';

import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

import 'action_button_variant.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.variant = ActionButtonVariant.primary,
    this.width = 100,
    this.height = 36,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final ActionButtonVariant variant;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 16,
          color: variant.foregroundColor,
        ),
        label: Text(
          label,
          style: AppTypography.labelLarge.copyWith(
            color: variant.foregroundColor,
          ),
        ),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s12,
            vertical: AppSpacing.s8,
          ),
          side: BorderSide(
            color: variant.borderColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.r16,
            ),
          ),
        ),
      ),
    );
  }
}
