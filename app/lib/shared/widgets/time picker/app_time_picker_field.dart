import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../text_field/text_field.dart';

class AppTimePickerField extends StatefulWidget {
  const AppTimePickerField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.validator,
    this.onChanged,
  });

  final TextEditingController controller;

  final String? label;
  final String? hintText;

  final String? Function(String?)? validator;

  final ValueChanged<TimeOfDay>? onChanged;

  @override
  State<AppTimePickerField> createState() => _AppTimePickerFieldState();
}

class _AppTimePickerFieldState extends State<AppTimePickerField> {
  Future<void> _selectTime() async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime == null) return;

    final now = DateTime.now();

    final dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      selectedTime.hour,
      selectedTime.minute,
    );

    widget.controller.text = DateFormat('HH:mm').format(dateTime);

    widget.onChanged?.call(selectedTime);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectTime,
      child: AbsorbPointer(
        child: AppTextField(
          controller: widget.controller,
          label: widget.label,
          hintText: widget.hintText ?? 'Select time',
          validator: widget.validator,
          suffixIcon: const Icon(
            Icons.access_time,
          ),
        ),
      ),
    );
  }
}
