import 'package:flutter/material.dart';

import '../../../../app/theme/app_radius.dart';
import '../../../../app/theme/app_typography.dart';

import 'chip_size.dart';
import 'chip_variant.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.label,
    this.leading,
    this.trailing,
    this.onTap,
    this.size = ChipSize.medium,
    this.variant = ChipVariant.filled,
  });

  final String label;

  final Widget? leading;
  final Widget? trailing;

  final VoidCallback? onTap;

  final ChipSize size;
  final ChipVariant variant;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          AppRadius.r12,
        ),
        child: Ink(
          height: size.height,
          padding: EdgeInsets.symmetric(
            horizontal: size.horizontalPadding,
          ),
          decoration: BoxDecoration(
            color: variant.backgroundColor,
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            border: variant.border,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leading != null) ...[
                leading!,
                const SizedBox(width: 8),
              ],
              Text(
                label,
                style: AppTypography.labelMedium.copyWith(
                  color: variant.foregroundColor,
                ),
              ),
              if (trailing != null) ...[
                const SizedBox(width: 8),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
