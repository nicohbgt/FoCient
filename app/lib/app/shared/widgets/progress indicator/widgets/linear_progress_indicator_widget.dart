import 'package:flutter/material.dart';

import '../helpers/progress_indicator_constants.dart';
import '../helpers/progress_indicator_style.dart';

class LinearProgressIndicatorWidget extends StatelessWidget {
  const LinearProgressIndicatorWidget({
    super.key,
    this.value,
  });

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ProgressIndicatorConstants.linearHeight,
      child: LinearProgressIndicator(
        value: value,
        color: ProgressIndicatorStyle.color,
        backgroundColor: ProgressIndicatorStyle.backgroundColor,
      ),
    );
  }
}
