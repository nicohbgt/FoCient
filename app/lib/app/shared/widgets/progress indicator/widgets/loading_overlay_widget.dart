import 'package:flutter/material.dart';

import '../app_progress_indicator.dart';
import '../app_progress_indicator_size.dart';

class LoadingOverlayWidget extends StatelessWidget {
  const LoadingOverlayWidget({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black54,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 140,
          ),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppProgressIndicator(
                size: AppProgressIndicatorSize.large,
              ),
              if (message != null) ...[
                const SizedBox(height: 16),
                Text(
                  message!,
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
