import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../domain/entities/task.dart';
import '../providers/tasks_provider.dart';
import '../widgets/task_form.dart';
import '../widgets/task_scaffold.dart';

class EditTaskPage extends ConsumerStatefulWidget {
  const EditTaskPage({super.key, required this.task});

  final Task task;

  @override
  ConsumerState<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends ConsumerState<EditTaskPage> {
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
    _titleController = TextEditingController(text: widget.task.title);
    _descriptionController =
        TextEditingController(text: widget.task.description);
    _startTimeController =
        TextEditingController(text: _fmt(widget.task.startTime));
    _endTimeController = TextEditingController(text: _fmt(widget.task.endTime));
    _reminderController = TextEditingController(
      text: widget.task.reminder == null ? '' : _fmt(widget.task.reminder!),
    );
    _selectedCategory = widget.task.category;
    _selectedPriority = _priorityLabel(widget.task.priority);
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

  String _fmt(DateTime t) =>
      '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';

  String _priorityLabel(TaskPriority p) => switch (p) {
        TaskPriority.high => 'High',
        TaskPriority.medium => 'Medium',
        TaskPriority.low => 'Low',
      };

  TaskPriority _parsePriority(String? label) => switch (label) {
        'High' => TaskPriority.high,
        'Medium' => TaskPriority.medium,
        _ => TaskPriority.low,
      };

  Future<void> _save() async {
    final title = _titleController.text.trim();
    if (title.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Title cannot be empty.')),
      );
      return;
    }

    final updated = widget.task.copyWith(
      title: title,
      description: _descriptionController.text.trim(),
      category: _selectedCategory ?? widget.task.category,
      priority: _parsePriority(_selectedPriority),
    );

    await ref.read(tasksProvider.notifier).updateTask(updated);

    if (!mounted) return;

    context.pop();
  }

  Future<void> _delete() async {
    await ref.read(tasksProvider.notifier).deleteTask(widget.task.id);

    if (!mounted) return;

    context.pop();
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
              onCategoryChanged: (v) => setState(() => _selectedCategory = v),
              onPriorityChanged: (v) => setState(() => _selectedPriority = v),
            ),
            const SizedBox(height: AppSpacing.xxxl),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _save,
                child: const Text('Save Changes'),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _delete,
                child: const Text('Delete Task'),
              ),
            ),
            const SizedBox(height: AppSpacing.xxxl),
          ],
        ),
      ),
    );
  }
}
