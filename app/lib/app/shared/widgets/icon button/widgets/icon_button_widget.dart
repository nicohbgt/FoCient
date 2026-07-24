import 'package:flutter/material.dart';

import '../app_icon_button_size.dart';
import '../app_icon_button_state.dart';
import '../app_icon_button_variant.dart';

import '../helpers/icon_button_constants.dart';
import '../helpers/icon_button_style.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.size,
    required this.variant,
    required this.state,
    required this.onPressed,
  });

  final IconData icon;

  final AppIconButtonSize size;

  final AppIconButtonVariant variant;

  final AppIconButtonState state;

  final VoidCallback? onPressed;

  double get buttonSize {
    switch (size) {
      case AppIconButtonSize.small:
        return IconButtonConstants.small;

      case AppIconButtonSize.medium:
        return IconButtonConstants.medium;

      case AppIconButtonSize.large:
        return IconButtonConstants.large;
    }
  }

  double get iconSize {
    switch (size) {
      case AppIconButtonSize.small:
        return IconButtonConstants.iconSmall;

      case AppIconButtonSize.medium:
        return IconButtonConstants.iconMedium;

      case AppIconButtonSize.large:
        return IconButtonConstants.iconLarge;
    }
  }

  bool get enabled => state != AppIconButtonState.disabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: enabled ? onPressed : null,
        borderRadius: BorderRadius.circular(
          IconButtonConstants.radius,
        ),
        child: AnimatedContainer(
          duration: IconButtonConstants.animationDuration,
          width: buttonSize,
          height: buttonSize,
          decoration: BoxDecoration(
            color: IconButtonStyle.backgroundColor(
              variant,
              state,
            ),
            borderRadius: BorderRadius.circular(
              IconButtonConstants.radius,
            ),
            border: Border.all(
              color: IconButtonStyle.borderColor(
                variant,
                state,
              ),
            ),
          ),
          child: Icon(
            icon,
            size: iconSize,
            color: IconButtonStyle.iconColor(
              variant,
              state,
            ),
          ),
        ),
      ),
    );
  }
}
