import 'package:flutter/material.dart';

import 'app_dropdown_item.dart';
import 'app_dropdown_size.dart';
import 'app_dropdown_state.dart';
import 'app_dropdown_variant.dart';

import 'helpers/dropdown_constants.dart';
import 'helpers/dropdown_overlay.dart';

import 'widgets/dropdown_field.dart';

class AppDropdown<T> extends StatefulWidget {
  const AppDropdown({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.hintText = '',
    this.state = AppDropdownState.defaultState,
    this.variant = AppDropdownVariant.standard,
    this.size = AppDropdownSize.large,
  });

  final List<AppDropdownItem<T>> items;

  final T? value;

  final ValueChanged<T?>? onChanged;

  final String hintText;

  final AppDropdownState state;

  final AppDropdownVariant variant;

  final AppDropdownSize size;

  @override
  State<AppDropdown<T>> createState() => _AppDropdownState<T>();
}

class _AppDropdownState<T> extends State<AppDropdown<T>> {
  final LayerLink _layerLink = LayerLink();

  DropdownOverlay<T>? _overlay;

  bool _isExpanded = false;

  AppDropdownItem<T>? get _selectedItem {
    for (final item in widget.items) {
      if (item.value == widget.value) {
        return item;
      }
    }

    return null;
  }

  @override
  void dispose() {
    _overlay?.dispose();
    super.dispose();
  }

  void _hideDropdown() {
    _overlay?.hide();

    if (mounted) {
      setState(() {
        _isExpanded = false;
      });
    }
  }

  void _showDropdown() {
    _overlay = DropdownOverlay<T>(
      context: context,
      layerLink: _layerLink,
      items: widget.items,
      selectedValue: widget.value,
      width: DropdownConstants.width,
      offset: const Offset(
        0,
        DropdownConstants.height + 4,
      ),
      onSelected: (item) {
        widget.onChanged?.call(item.value);
        _hideDropdown();
      },
    );

    _overlay!.show();

    setState(() {
      _isExpanded = true;
    });
  }

  void _toggleDropdown() {
    if (_overlay?.isShowing ?? false) {
      _hideDropdown();
    } else {
      _showDropdown();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownFieldWidget<T>(
      layerLink: _layerLink,
      state: widget.state,
      variant: widget.variant,
      selectedItem: _selectedItem,
      hintText: widget.hintText,
      isExpanded: _isExpanded,
      onTap: _toggleDropdown,
    );
  }
}
