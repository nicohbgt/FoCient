import 'package:flutter/material.dart';

import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

/// A design-system bottom sheet with an optional heading and drag handle.
class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.child,
    this.title,
    this.subtitle,
    this.showDragHandle = true,
    this.padding = const EdgeInsets.all(AppSpacing.s24),
    super.key,
  });

  /// The primary content displayed below the optional heading.
  final Widget child;

  /// The optional heading shown above [subtitle] and [child].
  final String? title;

  /// The optional supporting text shown below [title].
  final String? subtitle;

  /// Whether to display a visual drag affordance.
  final bool showDragHandle;

  /// The spacing between the sheet boundary and its content.
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final viewInsets = MediaQuery.viewInsetsOf(context);

    return AnimatedPadding(
      duration: kThemeAnimationDuration,
      curve: Curves.easeOut,
      padding: EdgeInsets.only(bottom: viewInsets.bottom),
      child: SafeArea(
        top: false,
        child: Material(
          color: colorScheme.surface,
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppRadius.r16),
            ),
          ),
          child: Padding(
            padding: padding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showDragHandle) ...[
                  const _DragHandle(),
                  const SizedBox(height: AppSpacing.s20),
                ],
                if (title != null)
                  Text(
                    title!,
                    style: AppTypography.headlineSmall.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                if (subtitle != null) ...[
                  if (title != null) const SizedBox(height: AppSpacing.s8),
                  Text(
                    subtitle!,
                    style: AppTypography.bodyMedium.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
                if (title != null || subtitle != null)
                  const SizedBox(height: AppSpacing.s20),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Presents an [AppBottomSheet] and completes with the value passed to
  /// `Navigator.pop`.
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    String? subtitle,
    bool isDismissible = true,
    bool enableDrag = true,
    bool isScrollControlled = true,
    bool showDragHandle = true,
    EdgeInsetsGeometry padding = const EdgeInsets.all(AppSpacing.s24),
    bool useRootNavigator = false,
    bool? requestFocus,
  }) {
    final surfaceColor = Theme.of(context).colorScheme.surface;

    return showModalBottomSheet<T>(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      requestFocus: requestFocus,
      backgroundColor: surfaceColor.withValues(alpha: 0),
      builder: (_) => AppBottomSheet(
        title: title,
        subtitle: subtitle,
        showDragHandle: showDragHandle,
        padding: padding,
        child: child,
      ),
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: AppSpacing.s48,
        height: AppSpacing.s4,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          borderRadius: BorderRadius.circular(AppRadius.full),
        ),
      ),
    );
  }
}
