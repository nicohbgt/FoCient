import 'package:flutter/material.dart';

import '../app_bottom_navigation_item.dart';
import '../app_bottom_navigation_state.dart';

import '../helpers/bottom_navigation_constants.dart';
import '../helpers/bottom_navigation_style.dart';

class BottomNavigationItemWidget extends StatelessWidget {
  const BottomNavigationItemWidget({
    super.key,
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final AppBottomNavigationItem item;

  final bool selected;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final AppBottomNavigationState state =
        item.state == AppBottomNavigationState.disabled
            ? AppBottomNavigationState.disabled
            : selected
                ? AppBottomNavigationState.selected
                : AppBottomNavigationState.defaultState;

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: state == AppBottomNavigationState.disabled ? null : onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: BottomNavigationConstants.verticalPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconTheme(
                  data: IconThemeData(
                    size: BottomNavigationConstants.iconSize,
                    color: BottomNavigationStyle.itemColor(state),
                  ),
                  child: item.icon,
                ),
                const SizedBox(
                  height: BottomNavigationConstants.labelSpacing,
                ),
                Text(
                  item.label,
                  style: BottomNavigationStyle.labelStyle(state),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
