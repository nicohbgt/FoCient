import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    super.key,
    required this.child,
    this.title,
    this.subtitle,
    this.showDragHandle = true,
    this.padding,
  });

  final Widget child;

  final String? title;
  final String? subtitle;

  final bool showDragHandle;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: padding ??
            const EdgeInsets.all(
              AppSpacing.s24,
            ),
        decoration: BoxDecoration(
          color: AppColors.neutral.c0,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              AppRadius.r16,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            if (showDragHandle)
              Center(
                child: Container(
                  width: 48,
                  height: 4,
                  margin: const EdgeInsets.only(
                    bottom: AppSpacing.s20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.neutral.c300,
                    borderRadius:
                        BorderRadius.circular(
                      AppRadius.full,
                    ),
                  ),
                ),
              ),

            if (title != null) ...[
              Text(
                title!,
                style: AppTypography
                    .headline
                    .headlineSmall,
              ),

              const SizedBox(
                height: AppSpacing.s8,
              ),
            ],

            if (subtitle != null) ...[
              Text(
                subtitle!,
                style: AppTypography
                    .body
                    .bodyMedium
                    .copyWith(
                      color: AppColors
                          .neutral
                          .c500,
                    ),
              ),

              const SizedBox(
                height: AppSpacing.s20,
              ),
            ],

            child,
          ],
        ),
      ),
    );
  }

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    String? subtitle,
    bool isDismissible = true,
    bool enableDrag = true,
    bool isScrollControlled = true,
    bool showDragHandle = true,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled:
          isScrollControlled,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return AppBottomSheet(
          title: title,
          subtitle: subtitle,
          showDragHandle:
              showDragHandle,
          child: child,
        );
      },
    );
  }
}
