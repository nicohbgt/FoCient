import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../app/theme/app_typography.dart';
import 'app_text_field.dart';

class AppDatePickerField extends StatefulWidget {
  const AppDatePickerField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.firstDate,
    this.lastDate,
    this.validator,
    this.onChanged,
  });

  final TextEditingController controller;

  final String? label;
  final String? hintText;

  final DateTime? firstDate;
  final DateTime? lastDate;

  final String? Function(String?)? validator;
  final ValueChanged<DateTime>? onChanged;

  @override
  State<AppDatePickerField> createState() => _AppDatePickerFieldState();
}

class _AppDatePickerFieldState extends State<AppDatePickerField> {
  Future<void> _selectDate() async {
    final now = DateTime.now();

    final selectedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: widget.firstDate ?? DateTime(2000),
      lastDate: widget.lastDate ?? DateTime(2100),
    );

    if (selectedDate == null) return;

    widget.controller.text = DateFormat('dd MMM yyyy').format(selectedDate);

    widget.onChanged?.call(selectedDate);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectDate,
      child: AbsorbPointer(
        child: AppTextField(
          controller: widget.controller,
          label: widget.label,
          hintText: widget.hintText ?? 'Select date',
          validator: widget.validator,
          suffixIcon: const Icon(
            Icons.calendar_month_outlined,
          ),
        ),
      ),
    );
  }
}
