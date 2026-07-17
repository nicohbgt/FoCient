import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';

class AvatarBadge extends StatelessWidget {
  const AvatarBadge({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color ?? AppColors.success.c500,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.neutral.c0,
          width: 2,
        ),
      ),
    );
  }
}
