import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_dropdown_item.dart';
import '../helpers/dropdown_constants.dart';
import '../helpers/dropdown_style.dart';

class DropdownMenuItemWidget<T> extends StatelessWidget {
  const DropdownMenuItemWidget({
    super.key,
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final AppDropdownItem<T> item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: DropdownConstants.borderRadius,
        child: Container(
          height: DropdownConstants.itemHeight,
          padding: DropdownConstants.padding,
          decoration: BoxDecoration(
            color: selected ? AppColors.primary.c50 : Colors.white,
            borderRadius: DropdownConstants.borderRadius,
          ),
          child: Row(
            children: [
              if (item.leading != null) ...[
                SizedBox(
                  width: DropdownConstants.iconSize,
                  height: DropdownConstants.iconSize,
                  child: Center(
                    child: item.leading,
                  ),
                ),
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Text(
                  item.label,
                  style: DropdownStyle.textStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (selected)
                Icon(
                  Icons.check_rounded,
                  size: 18,
                  color: AppColors.primary.c500,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
