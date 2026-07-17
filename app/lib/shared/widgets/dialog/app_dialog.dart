import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

import '../button/button.dart';

import 'dialog_action.dart';
import 'dialog_variant.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    required this.title,
    required this.message,
    this.variant = DialogVariant.information,
    this.actions = const [],
  });

  final String title;
  final String message;

  final DialogVariant variant;

  final List<DialogAction> actions;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.r24,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          AppSpacing.s24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: variant.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                variant.icon,
                color: variant.iconColor,
                size: 32,
              ),
            ),
            const SizedBox(
              height: AppSpacing.s24,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTypography.titleLarge,
            ),
            const SizedBox(
              height: AppSpacing.s8,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.neutral.c600,
              ),
            ),
            if (actions.isNotEmpty) ...[
              const SizedBox(
                height: AppSpacing.s24,
              ),
              Column(
                children: actions.map((action) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: AppSpacing.s12,
                    ),
                    child: AppButton(
                      label: action.label,
                      fullWidth: true,
                      onPressed: action.onPressed,
                    ),
                  );
                }).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
