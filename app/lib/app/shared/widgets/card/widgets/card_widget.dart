import 'package:flutter/material.dart';

import '../app_card_padding.dart';
import '../app_card_variant.dart';

import '../helpers/card_constants.dart';
import '../helpers/card_style.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.child,
    required this.variant,
    required this.padding,
    this.onTap,
  });

  final Widget child;

  final AppCardVariant variant;

  final AppCardPadding padding;

  final VoidCallback? onTap;

  EdgeInsets get contentPadding {
    switch (padding) {
      case AppCardPadding.none:
        return EdgeInsets.zero;

      case AppCardPadding.small:
        return const EdgeInsets.all(
          CardConstants.smallPadding,
        );

      case AppCardPadding.medium:
        return const EdgeInsets.all(
          CardConstants.mediumPadding,
        );

      case AppCardPadding.large:
        return const EdgeInsets.all(
          CardConstants.largePadding,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          CardConstants.radius,
        ),
        onTap: onTap,
        child: Container(
          padding: contentPadding,
          decoration: BoxDecoration(
            color: CardStyle.backgroundColor(
              variant,
            ),
            borderRadius: BorderRadius.circular(
              CardConstants.radius,
            ),
            border: CardStyle.border(
              variant,
            ),
            boxShadow: CardStyle.shadow(
              variant,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
