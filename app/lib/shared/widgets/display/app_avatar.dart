import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_radius.dart';
import '../../../app/theme/app_typography.dart';

enum AppAvatarSize {
  xs,
  sm,
  md,
  lg,
  xl,
}

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    this.imageUrl,
    this.initials,
    this.icon,
    this.size = AppAvatarSize.md,
    this.showOnlineIndicator = false,
    this.backgroundColor,
  });

  final String? imageUrl;
  final String? initials;
  final IconData? icon;

  final AppAvatarSize size;

  final bool showOnlineIndicator;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final avatar = Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primary.c100,
        borderRadius: BorderRadius.circular(
          AppRadius.full,
        ),
        image: imageUrl != null
            ? DecorationImage(
                image: AssetImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: imageUrl == null ? _buildContent() : null,
    );

    if (!showOnlineIndicator) {
      return avatar;
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        avatar,
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: _indicatorSize,
            height: _indicatorSize,
            decoration: BoxDecoration(
              color: AppColors.success.c500,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    if (icon != null) {
      return Icon(
        icon,
        color: AppColors.primary.c600,
        size: _iconSize,
      );
    }

    return Center(
      child: Text(
        initials ?? '',
        style: _textStyle.copyWith(
          color: AppColors.primary.c700,
        ),
      ),
    );
  }

  double get _size {
    switch (size) {
      case AppAvatarSize.xs:
        return 24;

      case AppAvatarSize.sm:
        return 32;

      case AppAvatarSize.md:
        return 40;

      case AppAvatarSize.lg:
        return 56;

      case AppAvatarSize.xl:
        return 72;
    }
  }

  double get _iconSize {
    switch (size) {
      case AppAvatarSize.xs:
        return 12;

      case AppAvatarSize.sm:
        return 16;

      case AppAvatarSize.md:
        return 20;

      case AppAvatarSize.lg:
        return 28;

      case AppAvatarSize.xl:
        return 36;
    }
  }

  double get _indicatorSize {
    switch (size) {
      case AppAvatarSize.xs:
        return 8;

      case AppAvatarSize.sm:
        return 10;

      case AppAvatarSize.md:
        return 12;

      case AppAvatarSize.lg:
        return 14;

      case AppAvatarSize.xl:
        return 16;
    }
  }

  TextStyle get _textStyle {
    switch (size) {
      case AppAvatarSize.xs:
        return AppTypography.labelSmall;

      case AppAvatarSize.sm:
        return AppTypography.labelMedium;

      case AppAvatarSize.md:
        return AppTypography.labelLarge;

      case AppAvatarSize.lg:
        return AppTypography.titleMedium;

      case AppAvatarSize.xl:
        return AppTypography.headlineSmall;
    }
  }
}
