import 'package:flutter/material.dart';

import 'app_progress_indicator_size.dart';
import 'app_progress_indicator_type.dart';

import 'widgets/circular_progress_indicator_widget.dart';
import 'widgets/linear_progress_indicator_widget.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({
    super.key,
    this.value,
    this.size = AppProgressIndicatorSize.medium,
    this.type = AppProgressIndicatorType.circular,
  });

  final double? value;

  final AppProgressIndicatorSize size;

  final AppProgressIndicatorType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppProgressIndicatorType.circular:
        return CircularProgressIndicatorWidget(
          size: size,
          value: value,
        );

      case AppProgressIndicatorType.linear:
        return LinearProgressIndicatorWidget(
          value: value,
        );
    }
  }
}
