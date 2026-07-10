import 'package:flutter/material.dart';

import '../../../../app/theme/app_typography.dart';

class DashboardSectionTitle extends StatelessWidget {
  const DashboardSectionTitle({
    super.key,
    required this.title,
    this.trailing,
  });

  final String title;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTypography.titleLarge,
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}
