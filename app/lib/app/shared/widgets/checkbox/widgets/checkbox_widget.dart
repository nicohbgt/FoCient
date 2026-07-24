import 'package:flutter/material.dart';

import '../app_checkbox_state.dart';

import '../helpers/checkbox_constants.dart';
import '../helpers/checkbox_style.dart';

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget({
    super.key,
    required this.value,
    required this.state,
    required this.onChanged,
  });

  final bool value;

  final AppCheckboxState state;

  final ValueChanged<bool>? onChanged;

  bool get _enabled => state != AppCheckboxState.disabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          CheckboxConstants.radius,
        ),
        onTap: _enabled ? () => onChanged?.call(!value) : null,
        child: AnimatedContainer(
          duration: CheckboxConstants.animationDuration,
          width: CheckboxConstants.size,
          height: CheckboxConstants.size,
          decoration: BoxDecoration(
            color: CheckboxStyle.fillColor(
              state,
              value,
            ),
            borderRadius: BorderRadius.circular(
              CheckboxConstants.radius,
            ),
            border: Border.all(
              color: CheckboxStyle.borderColor(
                state,
                value,
              ),
              width: CheckboxConstants.borderWidth,
            ),
          ),
          child: value
              ? Icon(
                  Icons.check,
                  size: 14,
                  color: CheckboxStyle.iconColor(
                    state,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
