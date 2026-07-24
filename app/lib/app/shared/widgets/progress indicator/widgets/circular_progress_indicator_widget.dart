import 'package:flutter/material.dart';

import '../app_progress_indicator_size.dart';

import '../helpers/progress_indicator_constants.dart';
import '../helpers/progress_indicator_style.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({
    super.key,
    required this.size,
    this.value,
  });

  final AppProgressIndicatorSize size;

  final double? value;

  double get dimension {
    switch (size) {
      case AppProgressIndicatorSize.small:
        return ProgressIndicatorConstants.smallCircularSize;

      case AppProgressIndicatorSize.medium:
        return ProgressIndicatorConstants.mediumCircularSize;

      case AppProgressIndicatorSize.large:
        return ProgressIndicatorConstants.largeCircularSize;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dimension,
      height: dimension,
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: ProgressIndicatorConstants.strokeWidth,
        color: ProgressIndicatorStyle.color,
        backgroundColor: ProgressIndicatorStyle.backgroundColor,
      ),
    );
  }
}
