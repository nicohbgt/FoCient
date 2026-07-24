import 'package:flutter/material.dart';

import 'app_icon_button_size.dart';
import 'app_icon_button_state.dart';
import 'app_icon_button_variant.dart';

import 'widgets/icon_button_widget.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = AppIconButtonSize.medium,
    this.variant = AppIconButtonVariant.ghost,
    this.state = AppIconButtonState.defaultState,
  });

  final IconData icon;

  final VoidCallback? onPressed;

  final AppIconButtonSize size;

  final AppIconButtonVariant variant;

  final AppIconButtonState state;

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      icon: icon,
      size: size,
      variant: variant,
      state: state,
      onPressed: onPressed,
    );
  }
}
