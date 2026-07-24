import 'package:flutter/material.dart';

import 'app_radio_state.dart';

import 'widgets/radio_widget.dart';

class AppRadio extends StatelessWidget {
  const AppRadio({
    super.key,
    required this.selected,
    required this.onChanged,
    this.state = AppRadioState.defaultState,
  });

  final bool selected;

  final ValueChanged<bool>? onChanged;

  final AppRadioState state;

  @override
  Widget build(BuildContext context) {
    return RadioWidget(
      selected: selected,
      state: state,
      onChanged: onChanged,
    );
  }
}
