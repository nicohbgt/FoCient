import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

class AppDropdown<T> extends StatelessWidget {
  const AppDropdown({
    super.key,
    required this.items,
    required this.itemLabelBuilder,
    required this.onSelected,
    this.value,
    this.label,
    this.hint = 'Select',
    this.prefixIcon,
    this.enabled = true,
    this.required = false,
    this.errorText,
  });

  final List<T> items;
  final T? value;

  final String? label;
  final String hint;

  final bool enabled;
  final bool required;

  final String? errorText;

  final Widget? prefixIcon;

  final String Function(T) itemLabelBuilder;

  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          RichText(
            text: TextSpan(
              style: AppTypography.label.labelMedium.copyWith(
                color: AppColors.neutral.c900,
              ),
              children: [
                TextSpan(
                  text: label,
                ),
                if (required)
                  TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: AppColors.error.c500,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSpacing.s8,
          ),
        ],
        InkWell(
          borderRadius: BorderRadius.circular(
            AppRadius.r12,
          ),
          onTap: enabled ? () => _showDropdown(context) : null,
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s16,
            ),
            decoration: BoxDecoration(
              color: AppColors.neutral.c0,
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
                if (prefixIcon != null) ...[
                  prefixIcon!,
                  const SizedBox(
                    width: AppSpacing.s12,
                  ),
                ],
                Expanded(
                  child: Text(
                    value == null ? hint : itemLabelBuilder(value as T),
                    style: value == null
                        ? AppTypography.body.bodyMedium.copyWith(
                            color: AppColors.neutral.c400,
                          )
                        : AppTypography.body.bodyMedium,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.neutral.c500,
                ),
              ],
            ),
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(
            height: AppSpacing.s4,
          ),
          Text(
            errorText!,
            style: AppTypography.label.labelSmall.copyWith(
              color: AppColors.error.c500,
            ),
          ),
        ],
      ],
    );
  }

  void _showDropdown(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) {
        return SafeArea(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            separatorBuilder: (_, __) => Divider(
              color: AppColors.neutral.c200,
              height: 1,
            ),
            itemBuilder: (_, index) {
              final item = items[index];

              final selected = item == value;

              return ListTile(
                title: Text(
                  itemLabelBuilder(item),
                ),
                trailing: selected
                    ? Icon(
                        Icons.check,
                        color: AppColors.primary.c500,
                      )
                    : null,
                onTap: () {
                  Navigator.pop(context);
                  onSelected(item);
                },
              );
            },
          ),
        );
      },
    );
  }
}
