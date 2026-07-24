import 'package:flutter/widgets.dart';

import '../../../../design system/tokens/radius/app_radius.dart';

class DropdownConstants {
  const DropdownConstants._();

  // Dimensions
  static const double width = 300;
  static const double height = 36;

  // Menu
  static const double menuMaxHeight = 220;
  static const double itemHeight = 36;

  // Border
  static const double borderWidth = 1.75;

  // Radius
  static final BorderRadius borderRadius = BorderRadius.circular(AppRadius.r8);

  // Padding
  static const EdgeInsets padding = EdgeInsets.all(8);

  // Icons
  static const double iconSize = 20;

  // Animation
  static const Duration animationDuration = Duration(milliseconds: 200);
}
