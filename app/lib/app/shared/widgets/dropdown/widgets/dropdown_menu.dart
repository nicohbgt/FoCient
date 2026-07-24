import 'package:flutter/material.dart';

import '../../../../design system/tokens/colors/app_colors.dart';

import '../app_dropdown_item.dart';
import '../helpers/dropdown_constants.dart';
import 'dropdown_menu_item.dart';

class DropdownMenuWidget<T> extends StatelessWidget {
  const DropdownMenuWidget({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onItemSelected,
  });

  final List<AppDropdownItem<T>> items;
  final T? selectedValue;
  final ValueChanged<AppDropdownItem<T>> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: DropdownConstants.width,
        constraints: const BoxConstraints(
          maxHeight: DropdownConstants.menuMaxHeight,
        ),
        decoration: BoxDecoration(
          color: AppColors.neutral.c0,
          borderRadius: DropdownConstants.borderRadius,
          border: Border.all(
            color: AppColors.neutral.c300,
            width: DropdownConstants.borderWidth,
          ),
        ),
        child: ClipRRect(
          borderRadius: DropdownConstants.borderRadius,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return DropdownMenuItemWidget<T>(
                item: item,
                selected: item.value == selectedValue,
                onTap: () => onItemSelected(item),
              );
            },
          ),
        ),
      ),
    );
  }
}
