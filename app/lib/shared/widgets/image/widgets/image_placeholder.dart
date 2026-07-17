import 'package:flutter/material.dart';

import '../../../../../app/theme/app_colors.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.image_outlined,
      color: AppColors.neutral.c400,
    );
  }
}
