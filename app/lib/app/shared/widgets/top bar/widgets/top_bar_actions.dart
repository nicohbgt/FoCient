import 'package:flutter/material.dart';

import '../helpers/top_bar_constants.dart';

class TopBarActions extends StatelessWidget {
  const TopBarActions({
    super.key,
    this.actions = const [],
  });

  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        actions.length,
        (index) => Padding(
          padding: EdgeInsets.only(
            left: index == 0 ? 0 : TopBarConstants.actionSpacing,
          ),
          child: actions[index],
        ),
      ),
    );
  }
}
