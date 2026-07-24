import 'package:flutter/material.dart';

import '../app_dropdown_item.dart';
import '../widgets/dropdown_menu.dart';

class DropdownOverlay<T> {
  DropdownOverlay({
    required this.context,
    required this.layerLink,
    required this.items,
    required this.selectedValue,
    required this.onSelected,
    required this.width,
    required this.offset,
  });

  final BuildContext context;
  final LayerLink layerLink;

  final List<AppDropdownItem<T>> items;

  final T? selectedValue;

  final ValueChanged<AppDropdownItem<T>> onSelected;

  final double width;

  final Offset offset;

  OverlayEntry? _overlayEntry;

  bool get isShowing => _overlayEntry != null;

  void show() {
    if (isShowing) return;

    _overlayEntry = OverlayEntry(
      builder: (_) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: hide,
              ),
            ),
            CompositedTransformFollower(
              link: layerLink,
              showWhenUnlinked: false,
              offset: offset,
              child: Material(
                color: Colors.transparent,
                child: SizedBox(
                  width: width,
                  child: DropdownMenuWidget<T>(
                    items: items,
                    selectedValue: selectedValue,
                    onItemSelected: (item) {
                      onSelected(item);
                      hide();
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void toggle() {
    if (isShowing) {
      hide();
    } else {
      show();
    }
  }

  void dispose() {
    hide();
  }
}
