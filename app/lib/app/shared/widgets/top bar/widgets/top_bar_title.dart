import 'package:flutter/material.dart';

import '../helpers/top_bar_style.dart';

class TopBarTitle extends StatelessWidget {
  const TopBarTitle({
    super.key,
    required this.title,
    this.subtitle,
  });

  final String title;

  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TopBarStyle.titleStyle.copyWith(
            color: TopBarStyle.titleColor,
          ),
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TopBarStyle.subtitleStyle.copyWith(
              color: TopBarStyle.subtitleColor,
            ),
          ),
      ],
    );
  }
}
