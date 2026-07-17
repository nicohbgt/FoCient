import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';

class AvatarPlaceholder extends StatelessWidget {
  const AvatarPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.person,
      color: AppColors.neutral.c400,
    );
  }
}
