import 'package:flutter/material.dart';

import '../app_bottom_navigation_item.dart';

import '../helpers/bottom_navigation_constants.dart';
import '../helpers/bottom_navigation_style.dart';

import 'bottom_navigation_item_widget.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  final List<AppBottomNavigationItem> items;

  final int currentIndex;

  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: BottomNavigationConstants.height,
      color: BottomNavigationStyle.backgroundColor,
      padding: const EdgeInsets.symmetric(
        horizontal: BottomNavigationConstants.horizontalPadding,
      ),
      child: Row(
        children: List.generate(
          items.length,
          (index) {
            return BottomNavigationItemWidget(
              item: items[index],
              selected: index == currentIndex,
              onTap: () => onTap(index),
            );
          },
        ),
      ),
    );
  }
}
