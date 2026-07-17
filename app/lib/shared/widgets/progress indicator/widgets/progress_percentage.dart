import 'package:flutter/material.dart';

import '../../../../../app/theme/app_typography.dart';

class ProgressPercentage extends StatelessWidget {
  const ProgressPercentage({
    super.key,
    required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${(value * 100).round()}%',
      style: AppTypography.labelMedium,
    );
  }
}
