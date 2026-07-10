import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../domain/entities/task.dart';
import '../widgets/task_form.dart';
import '../widgets/task_scaffold.dart';

class EditTaskPage extends StatefulWidget {
  const EditTaskPage({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _startTimeController;
  late final TextEditingController _endTimeController;
  late final TextEditingController _reminderController;

  String? _selectedCategory;
  String? _selectedPriority;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController(
      text: widget.task.title,
    );

    _descriptionController = TextEditingController(
      text: widget.task.description,
    );

    _startTimeController = TextEditingController(
      text: _formatTime(widget.task.startTime),
    );

    _endTimeController = TextEditingController(
      text: _formatTime(widget.task.endTime),
    );

    _reminderController = TextEditingController(
      text: widget.task.reminder == null
          ? ''
          : _formatTime(widget.task.reminder!),
    );

    _selectedCategory = widget.task.category;
    _selectedPriority = _priorityToString(widget.task.priority);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _startTimeController.dispose();
    _endTimeController.dispose();
    _reminderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TaskScaffold(
      title: 'Edit Task',
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
                  // TODO: Update Task
                },
                child: const Text(
                  'Save Changes',
                ),
              ),
            ),
            const SizedBox(
              height: AppSpacing.s16,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  // TODO: Delete Task
                },
                child: const Text(
                  'Delete Task',
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

  String _formatTime(DateTime time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');

    return '$hour:$minute';
  }

  String _priorityToString(TaskPriority priority) {
    switch (priority) {
      case TaskPriority.high:
        return 'High';
      case TaskPriority.medium:
        return 'Medium';
      case TaskPriority.low:
        return 'Low';
    }
  }
}
