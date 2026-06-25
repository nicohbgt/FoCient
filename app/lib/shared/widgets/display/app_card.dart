import 'package:flutter/material.dart';

import '../input/app_text_field.dart';

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
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: true,
          ),
          child: child!,
        );
      },
    );

    if (selectedTime == null) return;

    final hour = selectedTime.hour.toString().padLeft(2, '0');

    final minute = selectedTime.minute.toString().padLeft(2, '0');

    widget.controller.text = '$hour:$minute';

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
            Icons.access_time_outlined,
          ),
        ),
      ),
    );
  }
}
