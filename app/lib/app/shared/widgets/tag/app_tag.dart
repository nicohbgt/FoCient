import 'package:flutter/material.dart';

import 'app_tag_size.dart';
import 'app_tag_state.dart';
import 'app_tag_variant.dart';

import 'widgets/tag_widget.dart';

class AppTag extends StatelessWidget {
  const AppTag({
    super.key,
    required this.label,
    this.leading,
    this.trailing,
    this.onTap,
    this.size = AppTagSize.medium,
    this.variant = AppTagVariant.filled,
    this.state = AppTagState.defaultState,
  });

  final String label;

  final Widget? leading;

  final Widget? trailing;

  final VoidCallback? onTap;

  final AppTagSize size;

  final AppTagVariant variant;

  final AppTagState state;

  @override
  Widget build(BuildContext context) {
    return TagWidget(
      label: label,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
      size: size,
      variant: variant,
      state: state,
    );
  }
}
