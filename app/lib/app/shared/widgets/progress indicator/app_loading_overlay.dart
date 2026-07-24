import 'package:flutter/material.dart';

import 'widgets/loading_overlay_widget.dart';

class AppLoadingOverlay {
  AppLoadingOverlay._();

  static OverlayEntry? _overlayEntry;

  static bool get isShowing => _overlayEntry != null;

  static void show(
    BuildContext context, {
    String? message,
  }) {
    if (_overlayEntry != null) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (_) => LoadingOverlayWidget(
        message: message,
      ),
    );

    Overlay.of(
      context,
      rootOverlay: true,
    ).insert(_overlayEntry!);
  }

  static void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
