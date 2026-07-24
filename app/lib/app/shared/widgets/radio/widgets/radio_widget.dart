import 'package:flutter/material.dart';

import '../app_radio_state.dart';

import '../helpers/radio_constants.dart';
import '../helpers/radio_style.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({
    super.key,
    required this.selected,
    required this.state,
    required this.onChanged,
  });

  final bool selected;

  final AppRadioState state;

  final ValueChanged<bool>? onChanged;

  bool get _enabled => state != AppRadioState.disabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: _enabled ? () => onChanged?.call(true) : null,
        child: AnimatedContainer(
          duration: RadioConstants.animationDuration,
          width: RadioConstants.size,
          height: RadioConstants.size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: RadioStyle.borderColor(
                state,
                selected,
              ),
              width: RadioConstants.borderWidth,
            ),
          ),
          child: Center(
            child: AnimatedContainer(
              duration: RadioConstants.animationDuration,
              width: selected ? RadioConstants.innerCircleSize : 0,
              height: selected ? RadioConstants.innerCircleSize : 0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: RadioStyle.fillColor(
                  state,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
