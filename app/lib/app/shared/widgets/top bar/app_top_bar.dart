import 'package:flutter/material.dart';

import 'app_top_bar_size.dart';

import 'widgets/top_bar_widget.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.actions = const [],
    this.size = AppTopBarSize.medium,
  });

  final String title;

  final String? subtitle;

  final Widget? leading;

  final List<Widget> actions;

  final AppTopBarSize size;

  @override
  Size get preferredSize {
    switch (size) {
      case AppTopBarSize.small:
        return const Size.fromHeight(56);

      case AppTopBarSize.medium:
        return const Size.fromHeight(64);

      case AppTopBarSize.large:
        return const Size.fromHeight(72);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: TopBarWidget(
        title: title,
        subtitle: subtitle,
        leading: leading,
        actions: actions,
        size: size,
      ),
    );
  }
}
