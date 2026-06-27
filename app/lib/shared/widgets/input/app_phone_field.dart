import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

import '../display/app_divider.dart';

class AppPhoneField extends StatelessWidget {
  const AppPhoneField({
    super.key,
    required this.controller,
    required this.countryName,
    required this.dialCode,
    required this.flag,
    required this.onCountryTap,
    this.label,
    this.hint = 'Phone Number',
    this.errorText,
    this.enabled = true,
  });

  final TextEditingController controller;

  final String countryName;
  final String dialCode;
  final String flag;

  final VoidCallback onCountryTap;

  final String? label;
  final String hint;
  final String? errorText;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: AppTypography.labelMedium,
          ),
          const SizedBox(
            height: AppSpacing.s8,
          ),
        ],
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: enabled ? AppColors.neutral.c0 : AppColors.neutral.c100,
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            border: Border.all(
              color: errorText != null
                  ? AppColors.error.c500
                  : AppColors.neutral.c300,
            ),
          ),
          child: Row(
            children: [
              InkWell(
                onTap: enabled ? onCountryTap : null,
                borderRadius: BorderRadius.circular(
                  AppRadius.r12,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.s16,
                  ),
                  child: Row(
                    children: [
                      Text(
                        flag,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: AppSpacing.s8,
                      ),
                      Text(
                        dialCode,
                        style: AppTypography.bodyMedium,
                      ),
                      const SizedBox(
                        width: AppSpacing.s4,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                        color: AppColors.neutral.c500,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
                child: AppDivider(
                  direction: AppDividerDirection.vertical,
                  spacing: 0,
                ),
              ),
              Expanded(
                child: TextField(
                  controller: controller,
                  enabled: enabled,
                  keyboardType: TextInputType.phone,
                  style: AppTypography.bodyMedium,
                  decoration: InputDecoration(
                    hintText: hint,
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(
            height: AppSpacing.s4,
          ),
          Text(
            errorText!,
            style: AppTypography.labelSmall.copyWith(
              color: AppColors.error.c500,
            ),
          ),
        ],
      ],
    );
  }
}
