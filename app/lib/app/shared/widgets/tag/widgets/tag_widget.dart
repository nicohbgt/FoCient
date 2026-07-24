import 'package:flutter/material.dart';

import '../app_tag_size.dart';
import '../app_tag_state.dart';
import '../app_tag_variant.dart';

import '../helpers/tag_constants.dart';
import '../helpers/tag_style.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
    required this.label,
    required this.size,
    required this.variant,
    required this.state,
    this.leading,
    this.trailing,
    this.onTap,
  });

  final String label;

  final Widget? leading;

  final Widget? trailing;

  final AppTagSize size;

  final AppTagVariant variant;

  final AppTagState state;

  final VoidCallback? onTap;

  double get height {
    switch (size) {
      case AppTagSize.small:
        return TagConstants.smallHeight;

      case AppTagSize.medium:
        return TagConstants.mediumHeight;
    }
  }

  double get radius {
    switch (size) {
      case AppTagSize.small:
        return TagConstants.smallRadius;

      case AppTagSize.medium:
        return TagConstants.mediumRadius;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: state == AppTagState.disabled ? null : onTap,
        child: AnimatedContainer(
          duration: TagConstants.animationDuration,
          height: height,
          padding: const EdgeInsets.symmetric(
            horizontal: TagConstants.horizontalPadding,
          ),
          decoration: BoxDecoration(
            color: TagStyle.backgroundColor(
              variant,
              state,
            ),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: TagStyle.borderColor(
                variant,
                state,
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leading != null) ...[
                leading!,
                const SizedBox(width: TagConstants.spacing),
              ],
              Text(
                label,
                style: TagStyle.textStyle.copyWith(
                  color: TagStyle.foregroundColor(
                    variant,
                    state,
                  ),
                ),
              ),
              if (trailing != null) ...[
                const SizedBox(width: TagConstants.spacing),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
