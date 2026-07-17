enum SwitchSize {
  small,
  medium,
  large,
}

extension SwitchSizeExtension on SwitchSize {
  double get scale {
    switch (this) {
      case SwitchSize.small:
        return 0.8;

      case SwitchSize.medium:
        return 1.0;

      case SwitchSize.large:
        return 1.2;
    }
  }
}
