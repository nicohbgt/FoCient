import 'package:flutter/material.dart';

import 'loading_size.dart';
import 'loading_variant.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    this.size = LoadingSize.medium,
    this.variant = LoadingVariant.primary,
  });

  final LoadingSize size;
  final LoadingVariant variant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.size,
      height: size.size,
      child: CircularProgressIndicator(
        strokeWidth: size.strokeWidth,
        color: variant.color,
      ),
    );
  }
}
