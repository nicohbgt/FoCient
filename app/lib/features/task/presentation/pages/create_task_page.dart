import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

import '../../domain/entities/task.dart';
import '../providers/tasks_provider.dart';
import '../widgets/task_form.dart';
import '../widgets/task_scaffold.dart';

class CreateTaskPage extends ConsumerStatefulWidget {
  const CreateTaskPage({super.key});

  @override
  ConsumerState<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends ConsumerState<CreateTaskPage> {
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

  void _submit() {
    final title = _titleController.text.trim();
    final description = _descriptionController.text.trim();

    if (title.isEmpty ||
        _selectedCategory == null ||
        _selectedPriority == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all required fields.')),
      );
      return;
    }

    final priority = switch (_selectedPriority) {
      'High' => TaskPriority.high,
      'Medium' => TaskPriority.medium,
      _ => TaskPriority.low,
    };

    final now = DateTime.now();

    ref.read(tasksProvider.notifier).addTask(
          title: title,
          description: description,
          category: _selectedCategory!,
          priority: priority,
          date: now,
          startTime: now,
          endTime: now.add(const Duration(hours: 1)),
        );

    context.pop();
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
              onCategoryChanged: (v) => setState(() => _selectedCategory = v),
              onPriorityChanged: (v) => setState(() => _selectedPriority = v),
            ),
            const SizedBox(height: AppSpacing.xxxl),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _submit,
                child: const Text('Create Task'),
              ),
            ),
            const SizedBox(height: AppSpacing.xxxl),
          ],
        ),
      ),
    );
  }
}
