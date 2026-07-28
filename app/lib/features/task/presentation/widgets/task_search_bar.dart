import 'package:flutter/material.dart';

import '../../../../app/shared/widgets/text field/app_text_field.dart';
import '../../../../app/shared/widgets/text field/app_text_field_variant.dart';

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
      variant: AppTextFieldVariant.leadingIcon,
      leading: const Icon(Icons.search),
      onChanged: onChanged,
    );
  }
}
