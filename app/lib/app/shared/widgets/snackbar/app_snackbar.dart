import 'package:flutter/material.dart';

import 'app_snackbar_action.dart';
import 'app_snackbar_variant.dart';

import 'helpers/snackbar_constants.dart';
import 'helpers/snackbar_style.dart';

import 'widgets/snackbar_widget.dart';

class AppSnackbar {
  const AppSnackbar._();

  static void show(
    BuildContext context, {
    required String message,
    AppSnackbarVariant variant = AppSnackbarVariant.info,
    AppSnackbarAction? action,
    Duration? duration,
  }) {
    final messenger = ScaffoldMessenger.of(context);

    messenger.hideCurrentSnackBar();

    messenger.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: SnackbarStyle.backgroundColor(
          variant,
        ),
        duration: duration ?? SnackbarConstants.displayDuration,
        margin: SnackbarConstants.margin,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SnackbarConstants.borderRadius,
          ),
        ),
        content: SnackbarWidget(
          message: message,
          variant: variant,
          action: action,
        ),
      ),
    );
  }

  static void hide(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).hideCurrentSnackBar();
  }

  static void clear(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).clearSnackBars();
  }
}
