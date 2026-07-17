import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_radius.dart';

import 'icon_button_size.dart';
import 'icon_button_variant.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.variant = IconButtonVariant.ghost,
    this.size = IconButtonSize.medium,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  final IconButtonVariant variant;
  final IconButtonSize size;

  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final button = Material(
      color: variant.backgroundColor,
      borderRadius: BorderRadius.circular(
        AppRadius.r12,
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(
          AppRadius.r12,
        ),
        child: Ink(
          width: size.buttonSize,
          height: size.buttonSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
            border: variant.border == null
                ? null
                : Border.fromBorderSide(
                    variant.border!,
                  ),
          ),
          child: Icon(
            icon,
            size: size.iconSize,
            color: variant.iconColor,
          ),
        ),
      ),
    );

    if (tooltip == null) {
      return button;
    }

    return Tooltip(
      message: tooltip!,
      child: button,
    );
  }
}
