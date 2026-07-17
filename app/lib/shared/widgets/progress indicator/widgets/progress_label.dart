import 'package:flutter/material.dart';

import '../../../../../app/theme/app_typography.dart';

class ProgressLabel extends StatelessWidget {
  const ProgressLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppTypography.labelMedium,
    );
  }
}
