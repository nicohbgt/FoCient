import 'package:flutter/material.dart';

import 'app_time_picker_size.dart';
import 'app_time_picker_state.dart';

import 'widgets/time_picker_field.dart';

class AppTimePicker extends StatefulWidget {
  const AppTimePicker({
    super.key,
    this.value,
    this.onChanged,
    this.hintText = 'Select Time',
    this.state = AppTimePickerState.defaultState,
    this.size = AppTimePickerSize.large,
    this.initialEntryMode = TimePickerEntryMode.dial,
    this.builder,
  });

  final TimeOfDay? value;

  final ValueChanged<TimeOfDay?>? onChanged;

  final String hintText;

  final AppTimePickerState state;

  final AppTimePickerSize size;

  final TimePickerEntryMode initialEntryMode;

  final TransitionBuilder? builder;

  @override
  State<AppTimePicker> createState() => _AppTimePickerState();
}

class _AppTimePickerState extends State<AppTimePicker> {
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();

    _selectedTime = widget.value;
  }

  @override
  void didUpdateWidget(covariant AppTimePicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value != widget.value) {
      _selectedTime = widget.value;
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
      initialEntryMode: widget.initialEntryMode,
      builder: widget.builder,
    );

    if (pickedTime == null) {
      return;
    }

    setState(() {
      _selectedTime = pickedTime;
    });

    widget.onChanged?.call(pickedTime);
  }

  String? get _formattedTime {
    if (_selectedTime == null) {
      return null;
    }

    final String hour = _selectedTime!.hour.toString().padLeft(2, '0');

    final String minute = _selectedTime!.minute.toString().padLeft(2, '0');

    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return TimePickerFieldWidget(
      text: _formattedTime,
      hintText: widget.hintText,
      state: widget.state,
      onTap: _pickTime,
    );
  }
}
