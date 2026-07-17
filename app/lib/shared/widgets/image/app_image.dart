import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';

import 'image_fit.dart';
import 'image_shape.dart';

import 'widgets/image_error.dart';
import 'widgets/image_loader.dart';
import 'widgets/image_placeholder.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.fit = AppImageFit.cover,
    this.shape = AppImageShape.rounded,
  });

  final String? imageUrl;

  final double? width;
  final double? height;

  final AppImageFit fit;
  final AppImageShape shape;

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius;

    switch (shape) {
      case AppImageShape.circle:
        borderRadius = BorderRadius.circular(999);

      case AppImageShape.rounded:
        borderRadius = BorderRadius.circular(AppRadius.r16);

      case AppImageShape.rectangle:
        borderRadius = BorderRadius.zero;
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: width,
        height: height,
        color: AppColors.neutral.c100,
        child: _buildImage(),
      ),
    );
  }

  Widget _buildImage() {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return const ImagePlaceholder();
    }

    return Image.network(
      imageUrl!,
      fit: fit.value,
      loadingBuilder: (
        context,
        child,
        loadingProgress,
      ) {
        if (loadingProgress == null) {
          return child;
        }

        return const ImageLoader();
      },
      errorBuilder: (
        context,
        error,
        stackTrace,
      ) {
        return const ImageError();
      },
    );
  }
}
