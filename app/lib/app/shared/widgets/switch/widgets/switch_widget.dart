import 'package:flutter/material.dart';

import '../app_switch_state.dart';

import '../helpers/switch_constants.dart';
import '../helpers/switch_style.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required this.value,
    required this.state,
    required this.onChanged,
  });

  final bool value;

  final AppSwitchState state;

  final ValueChanged<bool>? onChanged;

  bool get _enabled => state != AppSwitchState.disabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          SwitchConstants.height,
        ),
        onTap: _enabled ? () => onChanged?.call(!value) : null,
        child: AnimatedContainer(
          duration: SwitchConstants.animationDuration,
          width: SwitchConstants.width,
          height: SwitchConstants.height,
          padding: const EdgeInsets.all(
            SwitchConstants.padding,
          ),
          decoration: BoxDecoration(
            color: SwitchStyle.trackColor(
              state,
              value,
            ),
            borderRadius: BorderRadius.circular(
              SwitchConstants.height,
            ),
          ),
          child: AnimatedAlign(
            duration: SwitchConstants.animationDuration,
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: SwitchConstants.thumbSize,
              height: SwitchConstants.thumbSize,
              decoration: BoxDecoration(
                color: SwitchStyle.thumbColor(
                  state,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
