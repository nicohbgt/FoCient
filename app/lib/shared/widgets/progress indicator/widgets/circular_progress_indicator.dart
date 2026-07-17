import 'package:flutter/material.dart';

import '../progress_indicator_size.dart';
import '../progress_indicator_variant.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({
    super.key,
    required this.value,
    required this.variant,
    required this.size,
  });

  final double value;

  final ProgressIndicatorVariant variant;

  final ProgressIndicatorSize size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.circularSize,
      height: size.circularSize,
      child: CircularProgressIndicator(
        value: value,
        color: variant.color,
      ),
    );
  }
}
