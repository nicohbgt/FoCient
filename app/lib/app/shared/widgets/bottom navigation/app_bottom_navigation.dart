import 'package:flutter/material.dart';

import 'app_bottom_navigation_item.dart';

import 'widgets/bottom_navigation_widget.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({
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
    return SafeArea(
      top: false,
      child: BottomNavigationWidget(
        items: items,
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
