import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/input/app_dropdown.dart';
import '../../../../shared/widgets/input/app_text_field.dart';

class TaskForm extends StatelessWidget {
  const TaskForm({
    super.key,
    required this.titleController,
    required this.descriptionController,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          controller: titleController,
          label: 'Task Title',
          hintText: 'Enter task title',
        ),
        const SizedBox(
          height: AppSpacing.s20,
        ),
        AppTextField(
          controller: descriptionController,
          label: 'Description',
          hintText: 'Enter description',
        ),
        const SizedBox(
          height: AppSpacing.s20,
        ),
        AppDropdown<String>(
          label: 'Priority',
          hint: 'Select priority',
          items: const [
            'High',
            'Medium',
            'Low',
          ],
          value: null,
          itemLabelBuilder: (value) => value,
          onSelected: (_) {},
        ),
        const SizedBox(
          height: AppSpacing.s20,
        ),
        AppDropdown<String>(
          label: 'Category',
          hint: 'Select category',
          items: const [
            'Development',
            'College',
            'Personal',
            'Health',
            'Learning',
          ],
          value: null,
          itemLabelBuilder: (value) => value,
          onSelected: (_) {},
        ),
      ],
    );
  }
}
