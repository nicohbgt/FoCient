import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
    this.hint = 'Search',
    this.enabled = true,
    this.autofocus = false,
  });

  final TextEditingController controller;

  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  final VoidCallback? onClear;

  final String hint;

  final bool enabled;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        controller: controller,
        enabled: enabled,
        autofocus: autofocus,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        style: AppTypography.bodyMedium,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTypography.bodyMedium.copyWith(
            color: AppColors.neutral.c400,
          ),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: AppColors.neutral.c500,
          ),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    controller.clear();
                    onClear?.call();
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    color: AppColors.neutral.c500,
                  ),
                )
              : null,
          filled: true,
          fillColor: AppColors.neutral.c0,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s16,
            vertical: AppSpacing.s12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            borderSide: BorderSide(
              color: AppColors.neutral.c300,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            borderSide: BorderSide(
              color: AppColors.neutral.c300,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            borderSide: BorderSide(
              color: AppColors.primary.c500,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            borderSide: BorderSide(
              color: AppColors.neutral.c200,
            ),
          ),
        ),
      ),
    );
  }
}
