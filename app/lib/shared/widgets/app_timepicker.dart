import 'package:flutter/material.dart';

import 'app_time_input.dart';
import 'app_segment_button.dart';
import 'app_am_pm_toggle.dart';
import 'app_timezone_dropdown.dart';

class AppTimePicker extends StatelessWidget {
  const AppTimePicker({
    super.key,
    required this.hour,
    required this.minute,
    required this.is24Hour,
    required this.isAm,
    required this.timezone,
    required this.onCancel,
    required this.onConfirm,
    required this.onHourTap,
    required this.onMinuteTap,
    required this.onTimezoneChanged,
    required this.onToggleFormat,
    required this.onToggleAmPm,
  });

  final int? hour;
  final int? minute;

  final bool is24Hour;
  final bool isAm;

  final String? timezone;

  final VoidCallback onCancel;
  final VoidCallback onConfirm;

  final VoidCallback onHourTap;
  final VoidCallback onMinuteTap;

  final ValueChanged<String?> onTimezoneChanged;

  final ValueChanged<bool> onToggleFormat;

  final ValueChanged<bool> onToggleAmPm;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Time",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AppTimeInput(
                    value: hour,
                    onTap: onHourTap,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    ":",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: AppTimeInput(
                    value: minute,
                    onTap: onMinuteTap,
                  ),
                ),
                const SizedBox(width: 12),
                AppSegmentButton(
                  is24Hour: is24Hour,
                  onChanged: onToggleFormat,
                ),
                if (!is24Hour) ...[
                  const SizedBox(width: 12),
                  AppAmPmToggle(
                    isAm: isAm,
                    onChanged: onToggleAmPm,
                  ),
                ]
              ],
            ),
            const SizedBox(height: 20),
            AppTimezoneDropdown(
              value: timezone,
              onChanged: onTimezoneChanged,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.access_time),
                const Spacer(),
                TextButton(
                  onPressed: onCancel,
                  child: const Text("Cancel"),
                ),
                FilledButton(
                  onPressed: onConfirm,
                  child: const Text("OK"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
