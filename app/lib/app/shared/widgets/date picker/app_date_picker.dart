import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app_date_picker_size.dart';
import 'app_date_picker_state.dart';

import 'helpers/date_picker_constants.dart';

import 'widgets/date_picker_field.dart';

class AppDatePicker extends StatefulWidget {
  const AppDatePicker({
    super.key,
    this.value,
    this.onChanged,
    this.hintText = 'Select Date',
    this.state = AppDatePickerState.defaultState,
    this.size = AppDatePickerSize.large,
    this.firstDate,
    this.lastDate,
  });

  final DateTime? value;

  final ValueChanged<DateTime?>? onChanged;

  final String hintText;

  final AppDatePickerState state;

  final AppDatePickerSize size;

  final DateTime? firstDate;

  final DateTime? lastDate;

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  late DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();

    _selectedDate = widget.value;
  }

  @override
  void didUpdateWidget(covariant AppDatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value != widget.value) {
      _selectedDate = widget.value;
    }
  }

  Future<void> _pickDate() async {
    final DateTime now = DateTime.now();

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: widget.firstDate ?? DateTime(2000),
      lastDate: widget.lastDate ?? DateTime(2100),
    );

    if (pickedDate == null) {
      return;
    }

    setState(() {
      _selectedDate = pickedDate;
    });

    widget.onChanged?.call(pickedDate);
  }

  @override
  Widget build(BuildContext context) {
    return DatePickerFieldWidget(
      text: _selectedDate == null
          ? null
          : DateFormat(
              DatePickerConstants.dateFormat,
            ).format(
              _selectedDate!,
            ),
      hintText: widget.hintText,
      state: widget.state,
      onTap: _pickDate,
    );
  }
}
