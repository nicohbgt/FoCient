import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';

import 'avatar_size.dart';
import 'avatar_variant.dart';

import 'widgets/avatar_badge.dart';
import 'widgets/avatar_image.dart';
import 'widgets/avatar_initial.dart';
import 'widgets/avatar_placeholder.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    this.imageUrl,
    this.initials,
    this.size = AvatarSize.md,
    this.variant = AvatarVariant.circle,
    this.showBadge = false,
    this.badgeColor,
  });

  final String? imageUrl;
  final String? initials;

  final AvatarSize size;
  final AvatarVariant variant;

  final bool showBadge;

  final Color? badgeColor;

  @override
  Widget build(BuildContext context) {
    final dimension = size.size;

    final borderRadius = variant == AvatarVariant.circle
        ? BorderRadius.circular(dimension)
        : BorderRadius.circular(AppRadius.r12);

    return SizedBox(
      width: dimension,
      height: dimension,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: Container(
              width: dimension,
              height: dimension,
              color: AppColors.neutral.c200,
              child: _buildContent(dimension),
            ),
          ),
          if (showBadge)
            Positioned(
              right: -2,
              bottom: -2,
              child: AvatarBadge(
                color: badgeColor,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContent(double size) {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return AvatarImage(
        imageUrl: imageUrl!,
        size: size,
      );
    }

    if (initials != null && initials!.isNotEmpty) {
      return AvatarInitial(
        initials: initials!,
      );
    }

    return const AvatarPlaceholder();
  }
}
