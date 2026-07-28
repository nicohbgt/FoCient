import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../../../app/shared/widgets/dropdown/app_dropdown.dart';
import '../../../../app/shared/widgets/dropdown/app_dropdown_item.dart';
import '../../../../app/shared/widgets/text field/app_text_field.dart';

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
          height: AppSpacing.xl,
        ),
        AppTextField(
          controller: descriptionController,
          label: 'Description',
          hintText: 'Enter description',
        ),
        const SizedBox(
          height: AppSpacing.xl,
        ),
        AppDropdown<String>(
          items: const [
            AppDropdownItem(value: 'High', label: 'High'),
            AppDropdownItem(value: 'Medium', label: 'Medium'),
            AppDropdownItem(value: 'Low', label: 'Low'),
          ],
          value: selectedPriority,
          hintText: 'Select priority',
          onChanged: onPriorityChanged,
        ),
        const SizedBox(
          height: AppSpacing.xl,
        ),
        AppDropdown<String>(
          items: const [
            AppDropdownItem(value: 'Development', label: 'Development'),
            AppDropdownItem(value: 'College', label: 'College'),
            AppDropdownItem(value: 'Personal', label: 'Personal'),
            AppDropdownItem(value: 'Health', label: 'Health'),
            AppDropdownItem(value: 'Learning', label: 'Learning'),
          ],
          value: selectedCategory,
          hintText: 'Select category',
          onChanged: onCategoryChanged,
        ),
      ],
    );
  }
}
