enum ProgressIndicatorSize {
  small,
  medium,
  large,
}

extension ProgressIndicatorSizeExtension on ProgressIndicatorSize {
  double get height {
    switch (this) {
      case ProgressIndicatorSize.small:
        return 4;

      case ProgressIndicatorSize.medium:
        return 8;

      case ProgressIndicatorSize.large:
        return 12;
    }
  }

  double get circularSize {
    switch (this) {
      case ProgressIndicatorSize.small:
        return 24;

      case ProgressIndicatorSize.medium:
        return 40;

      case ProgressIndicatorSize.large:
        return 64;
    }
  }
}
