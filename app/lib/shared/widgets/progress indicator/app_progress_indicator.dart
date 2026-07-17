import 'package:flutter/material.dart';

import 'progress_indicator_size.dart';
import 'progress_indicator_variant.dart';

import 'widgets/circular_progress_indicator.dart';
import 'widgets/linear_progress_indicator.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator.linear({
    super.key,
    required this.value,
    this.variant = ProgressIndicatorVariant.primary,
    this.size = ProgressIndicatorSize.medium,
  }) : circular = false;

  const AppProgressIndicator.circular({
    super.key,
    required this.value,
    this.variant = ProgressIndicatorVariant.primary,
    this.size = ProgressIndicatorSize.medium,
  }) : circular = true;

  final double value;

  final bool circular;

  final ProgressIndicatorVariant variant;

  final ProgressIndicatorSize size;

  @override
  Widget build(BuildContext context) {
    if (circular) {
      return AppCircularProgressIndicator(
        value: value,
        variant: variant,
        size: size,
      );
    }

    return AppLinearProgressIndicator(
      value: value,
      variant: variant,
      size: size,
    );
  }
}
