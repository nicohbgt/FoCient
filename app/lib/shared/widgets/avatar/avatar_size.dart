enum AvatarSize {
  xs,
  sm,
  md,
  lg,
  xl,
}

extension AvatarSizeExtension on AvatarSize {
  double get size {
    switch (this) {
      case AvatarSize.xs:
        return 24;

      case AvatarSize.sm:
        return 32;

      case AvatarSize.md:
        return 40;

      case AvatarSize.lg:
        return 56;

      case AvatarSize.xl:
        return 72;
    }
  }
}
