import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
    this.description,
    this.enabled = true,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;

  final String? label;
  final String? description;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final disabled = !enabled;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: disabled ? null : () => onChanged?.call(!value),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.s4,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: value,
              onChanged: disabled
                  ? null
                  : (checked) => onChanged?.call(checked ?? false),
              activeColor: AppColors.primary.c500,
              checkColor: Colors.white,
              side: BorderSide(
                color:
                    disabled ? AppColors.neutral.c300 : AppColors.neutral.c400,
              ),
            ),
            if (label != null)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label!,
                        style: AppTypography.body.bodyMedium.copyWith(
                          color: disabled
                              ? AppColors.neutral.c400
                              : AppColors.neutral.c900,
                        ),
                      ),
                      if (description != null) ...[
                        const SizedBox(
                          height: AppSpacing.s4,
                        ),
                        Text(
                          description!,
                          style: AppTypography.body.bodySmall.copyWith(
                            color: AppColors.neutral.c500,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
