import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';

import '../progress_indicator_size.dart';
import '../progress_indicator_variant.dart';

class AppLinearProgressIndicator extends StatelessWidget {
  const AppLinearProgressIndicator({
    super.key,
    required this.value,
    required this.variant,
    required this.size,
  });

  final double value;

  final ProgressIndicatorVariant variant;

  final ProgressIndicatorSize size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: LinearProgressIndicator(
        value: value,
        minHeight: size.height,
        backgroundColor: AppColors.neutral.c200,
        color: variant.color,
      ),
    );
  }
}
