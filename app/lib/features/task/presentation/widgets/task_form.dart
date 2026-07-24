import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../../../shared/widgets/dropdown/app_dropdown.dart';
import '../../../../shared/widgets/text field/app_text_field.dart';

class TaskForm extends StatelessWidget {
  const TaskForm({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.selectedCategory,
    required this.selectedPriority,
    required this.onCategoryChanged,
    required this.onPriorityChanged,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  final String? selectedCategory;
  final String? selectedPriority;

  final ValueChanged<String?> onCategoryChanged;
  final ValueChanged<String?> onPriorityChanged;

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
          value: selectedPriority,
          itemLabelBuilder: (value) => value,
          onSelected: onPriorityChanged,
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
          value: selectedCategory,
          itemLabelBuilder: (value) => value,
          onSelected: onCategoryChanged,
        ),
      ],
    );
  }
}
