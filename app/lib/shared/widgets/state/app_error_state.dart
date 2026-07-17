import 'package:flutter/material.dart';

import '../../../../shared/widgets/button/button.dart';

import 'app_empty_state.dart';
import 'state_variant.dart';

class AppErrorState extends StatelessWidget {
  const AppErrorState({
    super.key,
    required this.title,
    required this.description,
    this.onRetry,
  });

  final String title;
  final String description;

  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return AppEmptyState(
      title: title,
      description: description,
      variant: StateVariant.error,
      action: onRetry == null
          ? null
          : AppButton(
              label: 'Try Again',
              fullWidth: false,
              onPressed: onRetry,
            ),
    );
  }
}
