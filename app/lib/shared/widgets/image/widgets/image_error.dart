import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';

class ImageError extends StatelessWidget {
  const ImageError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.broken_image_outlined,
      color: AppColors.neutral.c400,
    );
  }
}
