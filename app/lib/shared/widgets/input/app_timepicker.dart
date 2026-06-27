import 'package:flutter/material.dart';

import '../time picker/app_time_input.dart';
import '../time picker/app_segment_button.dart';
import '../time picker/app_am_pm_toggle.dart';
import '../input/app_dropdown.dart';

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
            AppDropdown<String>(
              label: 'Timezone',
              hint: 'Select timezone',
              items: const [
                'UTC-12:00',
                'UTC-11:00',
                'UTC-10:00',
                'UTC-09:00',
                'UTC-08:00',
                'UTC-07:00',
                'UTC-06:00',
                'UTC-05:00',
                'UTC-04:00',
                'UTC-03:00',
                'UTC-02:00',
                'UTC-01:00',
                'UTC+00:00',
                'UTC+01:00',
                'UTC+02:00',
                'UTC+03:00',
                'UTC+04:00',
                'UTC+05:00',
                'UTC+06:00',
                'UTC+07:00',
                'UTC+08:00',
                'UTC+09:00',
                'UTC+10:00',
                'UTC+11:00',
                'UTC+12:00',
              ],
              value: timezone,
              itemLabelBuilder: (value) => value,
              onSelected: (value) => onTimezoneChanged(value),
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
