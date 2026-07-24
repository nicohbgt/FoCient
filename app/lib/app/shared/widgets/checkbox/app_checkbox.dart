import 'package:flutter/material.dart';

import 'app_checkbox_state.dart';

import 'widgets/checkbox_widget.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.state = AppCheckboxState.defaultState,
  });

  final bool value;

  final ValueChanged<bool>? onChanged;

  final AppCheckboxState state;

  @override
  Widget build(BuildContext context) {
    return CheckboxWidget(
      value: value,
      state: state,
      onChanged: onChanged,
    );
  }
}
