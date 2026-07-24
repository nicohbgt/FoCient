import 'package:flutter/material.dart';

import '../app_top_bar_size.dart';

import '../helpers/top_bar_constants.dart';
import '../helpers/top_bar_style.dart';

import 'top_bar_actions.dart';
import 'top_bar_leading.dart';
import 'top_bar_title.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
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

  double get height {
    switch (size) {
      case AppTopBarSize.small:
        return TopBarConstants.smallHeight;

      case AppTopBarSize.medium:
        return TopBarConstants.mediumHeight;

      case AppTopBarSize.large:
        return TopBarConstants.largeHeight;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: TopBarConstants.horizontalPadding,
      ),
      color: TopBarStyle.backgroundColor,
      child: Row(
        children: [
          TopBarLeading(
            child: leading,
          ),
          const SizedBox(
            width: TopBarConstants.spacing,
          ),
          Expanded(
            child: TopBarTitle(
              title: title,
              subtitle: subtitle,
            ),
          ),
          TopBarActions(
            actions: actions,
          ),
        ],
      ),
    );
  }
}
