import 'package:flutter/material.dart';

class AppMotionCurve {
  AppMotionCurve._();

  /// Default transition
  static const Curve standard = Curves.easeInOut;

  /// Enter animation
  static const Curve emphasized = Curves.easeOutCubic;

  /// Opening animation
  static const Curve enter = Curves.easeOut;

  /// Closing animation
  static const Curve exit = Curves.easeIn;

  /// Linear animation
  static const Curve linear = Curves.linear;
}
