import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_dropdown_item.dart';
import '../app_dropdown_state.dart';
import '../app_dropdown_variant.dart';
import '../helpers/dropdown_constants.dart';
import '../helpers/dropdown_style.dart';

class DropdownFieldWidget<T> extends StatelessWidget {
  const DropdownFieldWidget({
    super.key,
    required this.layerLink,
    required this.state,
    required this.variant,
    required this.selectedItem,
    required this.hintText,
    required this.onTap,
    required this.isExpanded,
  });

  final LayerLink layerLink;

  final AppDropdownState state;
  final AppDropdownVariant variant;

  final AppDropdownItem<T>? selectedItem;

  final String hintText;

  final VoidCallback onTap;

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final bool hasValue = selectedItem != null;

    return CompositedTransformTarget(
      link: layerLink,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: DropdownConstants.borderRadius,
          child: Container(
            width: DropdownConstants.width,
            height: DropdownConstants.height,
            padding: DropdownConstants.padding,
            decoration: BoxDecoration(
              color: AppColors.neutral.c0,
              borderRadius: DropdownConstants.borderRadius,
              border: Border.all(
                color: DropdownStyle.borderColor(state),
                width: DropdownConstants.borderWidth,
              ),
            ),
            child: Row(
              children: [
                if (_showLeadingIcon(hasValue)) ...[
                  SizedBox(
                    width: DropdownConstants.iconSize,
                    height: DropdownConstants.iconSize,
                    child: Center(
                      child: selectedItem!.leading,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
                Expanded(
                  child: Text(
                    hasValue ? selectedItem!.label : hintText,
                    style: hasValue
                        ? DropdownStyle.textStyle
                        : DropdownStyle.hintStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                AnimatedRotation(
                  turns: isExpanded ? 0.5 : 0,
                  duration: DropdownConstants.animationDuration,
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: DropdownConstants.iconSize,
                    color: DropdownStyle.iconColor(state),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _showLeadingIcon(bool hasValue) {
    return variant == AppDropdownVariant.leadingIcon &&
        hasValue &&
        selectedItem?.leading != null;
  }
}
