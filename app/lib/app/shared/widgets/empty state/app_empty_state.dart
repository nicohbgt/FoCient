import 'package:flutter/material.dart';

import 'app_empty_state_size.dart';

import 'widgets/empty_state_widget.dart';

class AppEmptyState extends StatelessWidget {
  const AppEmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.size = AppEmptyStateSize.medium,
    this.action,
  });

  final Widget icon;

  final String title;

  final String description;

  final AppEmptyStateSize size;

  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return EmptyStateWidget(
      icon: icon,
      title: title,
      description: description,
      size: size,
      action: action,
    );
  }
}
