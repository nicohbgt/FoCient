import 'package:flutter/material.dart';

import '../app_empty_state_size.dart';

import '../helpers/empty_state_constants.dart';
import '../helpers/empty_state_style.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.size,
    this.action,
  });

  final Widget icon;

  final String title;

  final String description;

  final AppEmptyStateSize size;

  final Widget? action;

  double get iconSize {
    switch (size) {
      case AppEmptyStateSize.small:
        return EmptyStateConstants.smallIconSize;

      case AppEmptyStateSize.medium:
        return EmptyStateConstants.mediumIconSize;

      case AppEmptyStateSize.large:
        return EmptyStateConstants.largeIconSize;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: EmptyStateConstants.maxWidth,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: iconSize,
                height: iconSize,
                child: FittedBox(
                  child: icon,
                ),
              ),
              const SizedBox(
                height: EmptyStateConstants.spacing,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: EmptyStateStyle.titleStyle,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: EmptyStateStyle.descriptionStyle,
              ),
              if (action != null) ...[
                const SizedBox(
                  height: 24,
                ),
                action!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
