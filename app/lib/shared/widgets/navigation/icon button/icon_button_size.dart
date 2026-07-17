enum IconButtonSize {
  small,
  medium,
  large,
}

extension IconButtonSizeExtension on IconButtonSize {
  double get buttonSize {
    switch (this) {
      case IconButtonSize.small:
        return 32;

      case IconButtonSize.medium:
        return 40;

      case IconButtonSize.large:
        return 48;
    }
  }

  double get iconSize {
    switch (this) {
      case IconButtonSize.small:
        return 16;

      case IconButtonSize.medium:
        return 20;

      case IconButtonSize.large:
        return 24;
    }
  }
}
