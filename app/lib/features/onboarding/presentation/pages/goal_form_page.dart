import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/shared/widgets/button/app_button.dart';
import '../../../../app/shared/widgets/button/app_button_variant.dart';
import '../../../../app/shared/widgets/button/app_button_size.dart';
import '../../../../app/shared/widgets/button/app_button_state.dart';
import '../../../../app/shared/widgets/text field/app_text_field.dart';
import '../../../../app/shared/widgets/date picker/app_date_picker.dart';
import '../../domain/entities/goal.dart';
import '../providers/goals_provider.dart';

class GoalFormPage extends ConsumerStatefulWidget {
  const GoalFormPage({super.key});

  @override
  ConsumerState<GoalFormPage> createState() => _GoalFormPageState();
}

class _GoalFormPageState extends ConsumerState<GoalFormPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _deadline;
  GoalPriority _priority = GoalPriority.medium;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _saveGoal() {
    final name = _nameController.text.trim();
    if (name.isEmpty) return; // Basic validation

    final goal = Goal(
      name: name,
      description: _descriptionController.text.trim(),
      deadline: _deadline,
      priority: _priority,
    );

    ref.read(goalsProvider.notifier).addGoal(goal);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Add your goals',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),

              // Goals Name
              AppTextField(
                hintText: 'Goals Name',
                controller: _nameController,
              ),
              const SizedBox(height: 16),

              // Deadline
              AppDatePicker(
                hintText: 'Deadline',
                value: _deadline,
                onChanged: (date) {
                  setState(() {
                    _deadline = date;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Description
              SizedBox(
                height: 120,
                child: TextField(
                  controller: _descriptionController,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: Color(0xFFCBD5E1), width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: Color(0xFFCBD5E1), width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: Color(0xFFCBD5E1), width: 1.5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Priority Title
              const Text(
                'Priority',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              // Priorities Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    text: 'Low',
                    variant: AppButtonVariant.success,
                    size: AppButtonSize.w100,
                    state: _priority == GoalPriority.low
                        ? AppButtonState.active
                        : AppButtonState.defaultState,
                    onPressed: () {
                      setState(() {
                        _priority = GoalPriority.low;
                      });
                    },
                  ),
                  const SizedBox(width: 12),
                  AppButton(
                    text: 'Medium',
                    variant: AppButtonVariant.warning,
                    size: AppButtonSize.w100,
                    state: _priority == GoalPriority.medium
                        ? AppButtonState.active
                        : AppButtonState.defaultState,
                    onPressed: () {
                      setState(() {
                        _priority = GoalPriority.medium;
                      });
                    },
                  ),
                  const SizedBox(width: 12),
                  AppButton(
                    text: 'High',
                    variant: AppButtonVariant.error,
                    size: AppButtonSize.w100,
                    state: _priority == GoalPriority.high
                        ? AppButtonState.active
                        : AppButtonState.defaultState,
                    onPressed: () {
                      setState(() {
                        _priority = GoalPriority.high;
                      });
                    },
                  ),
                ],
              ),

              const Spacer(),

              // Save Button
              AppButton(
                text: 'Save',
                variant: AppButtonVariant.primary,
                onPressed: _saveGoal,
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
