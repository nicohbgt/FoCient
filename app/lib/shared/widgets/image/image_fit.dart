import 'package:flutter/material.dart';

enum AppImageFit {
  cover,
  contain,
  fill,
}

extension AppImageFitExtension on AppImageFit {
  BoxFit get value {
    switch (this) {
      case AppImageFit.cover:
        return BoxFit.cover;

      case AppImageFit.contain:
        return BoxFit.contain;

      case AppImageFit.fill:
        return BoxFit.fill;
    }
  }
}
