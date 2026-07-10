import 'package:flutter/material.dart';

import '../../../../shared/widgets/input/app_text_field.dart';

class TaskSearchBar extends StatelessWidget {
  const TaskSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: controller,
      hintText: 'Search task...',
      prefixIcon: const Icon(Icons.search),
      onChanged: onChanged,
    );
  }
}
