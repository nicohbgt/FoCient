import 'package:flutter/material.dart';

import '../widgets/task_form.dart';
import '../widgets/task_scaffold.dart';

import '../../../../app/theme/app_spacing.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({
    super.key,
  });

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final _titleController = TextEditingController();

  final _descriptionController = TextEditingController();

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
            ),
            const SizedBox(
              height: AppSpacing.s32,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  // TODO:
                  // Save Task
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
