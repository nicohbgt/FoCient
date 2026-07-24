import 'package:flutter/widgets.dart';

import 'app_bottom_navigation_state.dart';

class AppBottomNavigationItem {
  const AppBottomNavigationItem({
    required this.icon,
    required this.label,
    this.state = AppBottomNavigationState.defaultState,
  });

  final Widget icon;

  final String label;

  final AppBottomNavigationState state;
}
