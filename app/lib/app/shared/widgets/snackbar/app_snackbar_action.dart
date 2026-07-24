import 'package:flutter/foundation.dart';

class AppSnackbarAction {
  const AppSnackbarAction({
    required this.label,
    required this.onPressed,
  });

  final String label;

  final VoidCallback onPressed;
}
