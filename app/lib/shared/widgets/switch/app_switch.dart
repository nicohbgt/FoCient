import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

import 'switch_size.dart';
import 'switch_variant.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.variant = SwitchVariant.primary,
    this.size = SwitchSize.medium,
  });

  final bool value;

  final ValueChanged<bool> onChanged;

  final SwitchVariant variant;

  final SwitchSize size;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: size.scale,
      child: Switch(
        value: value,
        onChanged: onChanged,
        activeThumbColor: AppColors.neutral.c0,
        activeTrackColor: variant.activeColor,
      ),
    );
  }
}
