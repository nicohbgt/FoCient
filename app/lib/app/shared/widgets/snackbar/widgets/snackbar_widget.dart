import 'package:flutter/material.dart';

import '../app_snackbar_action.dart';
import '../app_snackbar_variant.dart';

import '../helpers/snackbar_constants.dart';
import '../helpers/snackbar_style.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({
    super.key,
    required this.message,
    required this.variant,
    this.action,
  });

  final String message;

  final AppSnackbarVariant variant;

  final AppSnackbarAction? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          SnackbarStyle.icon(variant),
          size: SnackbarConstants.iconSize,
          color: SnackbarStyle.foregroundColor,
        ),
        const SizedBox(
          width: SnackbarConstants.spacing,
        ),
        Expanded(
          child: Text(
            message,
            style: SnackbarStyle.messageStyle,
          ),
        ),
        if (action != null)
          TextButton(
            onPressed: action!.onPressed,
            child: Text(
              action!.label,
              style: SnackbarStyle.actionStyle,
            ),
          ),
      ],
    );
  }
}
