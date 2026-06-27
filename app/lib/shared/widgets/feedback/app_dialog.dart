import 'package:flutter/material.dart';

import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';

/// A design-system dialog for focused content and optional actions.
class AppDialog extends StatelessWidget {
  const AppDialog({
    required this.child,
    this.title,
    this.actions = const <Widget>[],
    super.key,
  });

  /// The main dialog content.
  final Widget child;

  /// The optional dialog heading.
  final String? title;

  /// Actions displayed at the bottom of the dialog.
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AlertDialog(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surfaceTint,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.r16)),
      ),
      title: title == null
          ? null
          : Text(
              title!,
              style: AppTypography.headlineSmall.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
      content: DefaultTextStyle.merge(
        style: AppTypography.bodyMedium.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        child: child,
      ),
      actionsPadding: const EdgeInsets.fromLTRB(
        AppSpacing.s24,
        AppSpacing.s8,
        AppSpacing.s24,
        AppSpacing.s24,
      ),
      actions: actions,
    );
  }

  /// Presents an [AppDialog] and completes with the value passed to
  /// `Navigator.pop`.
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    List<Widget> actions = const <Widget>[],
    bool barrierDismissible = true,
    bool useRootNavigator = true,
    bool? requestFocus,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      requestFocus: requestFocus,
      builder: (_) => AppDialog(
        title: title,
        actions: actions,
        child: child,
      ),
    );
  }
}
