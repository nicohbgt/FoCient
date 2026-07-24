import 'package:flutter/material.dart';

class AppDropdownItem<T> {
  const AppDropdownItem({
    required this.value,
    required this.label,
    this.leading,
  });

  final T value;
  final String label;
  final Widget? leading;
}
