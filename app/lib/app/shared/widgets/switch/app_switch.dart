import 'package:flutter/material.dart';

import 'app_switch_state.dart';

import 'widgets/switch_widget.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.state = AppSwitchState.defaultState,
  });

  final bool value;

  final ValueChanged<bool>? onChanged;

  final AppSwitchState state;

  @override
  Widget build(BuildContext context) {
    return SwitchWidget(
      value: value,
      state: state,
      onChanged: onChanged,
    );
  }
}
