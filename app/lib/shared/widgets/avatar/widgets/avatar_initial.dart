import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_typography.dart';

class AvatarInitial extends StatelessWidget {
  const AvatarInitial({
    super.key,
    required this.initials,
  });

  final String initials;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        initials,
        style: AppTypography.titleMedium.copyWith(
          color: AppColors.neutral.c0,
        ),
      ),
    );
  }
}
