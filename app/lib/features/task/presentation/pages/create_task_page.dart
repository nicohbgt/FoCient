import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';

import '../widgets/task_form.dart';
import '../widgets/task_scaffold.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({
    super.key,
  });

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  String? _selectedCategory;
  String? _selectedPriority;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TaskScaffold(
      title: 'Create Task',
      child: SingleChildScrollView(
        child: Column(
          children: [
            TaskForm(
              titleController: _titleController,
              descriptionController: _descriptionController,
              selectedCategory: _selectedCategory,
              selectedPriority: _selectedPriority,
              onCategoryChanged: (value) {
                setState(() {
                  _selectedCategory = value;
                });
              },
              onPriorityChanged: (value) {
                setState(() {
                  _selectedPriority = value;
                });
              },
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  // TODO: Save Task
                },
                child: const Text(
                  'Create Task',
                ),
              ),
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
          ],
        ),
      ),
    );
  }
}
