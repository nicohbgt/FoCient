import 'package:flutter/material.dart';

import 'app_card_padding.dart';
import 'app_card_variant.dart';

import 'widgets/card_widget.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.variant = AppCardVariant.elevated,
    this.padding = AppCardPadding.medium,
    this.onTap,
  });

  final Widget child;

  final AppCardVariant variant;

  final AppCardPadding padding;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: child,
      variant: variant,
      padding: padding,
      onTap: onTap,
    );
  }
}
