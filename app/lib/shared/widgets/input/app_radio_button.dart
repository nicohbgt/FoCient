import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

class AppRadioButton<T> extends StatelessWidget {
  const AppRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.label,
    this.description,
    this.enabled = true,
  });

  final T value;
  final T? groupValue;

  final ValueChanged<T?>? onChanged;

  final String? label;
  final String? description;

  final bool enabled;

  bool get selected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: enabled ? () => onChanged?.call(value) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.s4,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioGroup<T>(
              groupValue: groupValue,
              onChanged: enabled
                  ? (v) {
                      if (v != null) onChanged?.call(v);
                    }
                  : (v) {},
              child: Radio<T>(
                value: value,
                activeColor: AppColors.primary.c500,
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
                        style: AppTypography.bodyMedium.copyWith(
                          color: enabled
                              ? AppColors.neutral.c900
                              : AppColors.neutral.c400,
                        ),
                      ),
                      if (description != null) ...[
                        const SizedBox(
                          height: AppSpacing.s4,
                        ),
                        Text(
                          description!,
                          style: AppTypography.bodySmall.copyWith(
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
