import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/input/app_dropdown.dart';
import '../../../../shared/widgets/input/app_text_field.dart';
import '../../../../shared/widgets/input/app_timepicker.dart';

import '../widgets/onboarding_header.dart';
import '../widgets/onboarding_scaffold.dart';
import '../widgets/weekday_selector.dart';

class SetupTimeAllocationPage extends StatefulWidget {
  const SetupTimeAllocationPage({
    super.key,
  });

  @override
  State<SetupTimeAllocationPage> createState() =>
      _SetupTimeAllocationPageState();
}

class _SetupTimeAllocationPageState extends State<SetupTimeAllocationPage> {
  final Set<String> selectedDays = {
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
  };

  String? breakDuration = '30 Minutes';
  String? timezone = 'UTC+07:00 (Jakarta)';

  final TextEditingController _startTimeController =
      TextEditingController(text: '08:00');
  final TextEditingController _endTimeController =
      TextEditingController(text: '17:00');

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      header: const OnboardingHeader(
        currentStep: 3,
        totalSteps: 4,
        title: 'Set Your Availability',
        subtitle: 'Help FoCient understand when you are available to work.',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Working Days'),
            const SizedBox(height: AppSpacing.s12),
            WeekdaySelector(
              selectedDays: selectedDays,
              onToggle: (day) {
                setState(() {
                  if (selectedDays.contains(day)) {
                    selectedDays.remove(day);
                  } else {
                    selectedDays.add(day);
                  }
                });
              },
            ),
            const SizedBox(height: AppSpacing.s24),
            AppTextField(
              controller: _startTimeController,
              label: 'Start Time',
              hintText: '08:00',
              readOnly: true,
              suffixIcon: const Icon(Icons.access_time),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AppTimePicker(
                    hour: 8,
                    minute: 0,
                    is24Hour: true,
                    isAm: true,
                    timezone: timezone,
                    onCancel: () => Navigator.pop(context),
                    onConfirm: () => Navigator.pop(context),
                    onHourTap: () {},
                    onMinuteTap: () {},
                    onTimezoneChanged: (value) {
                      setState(() {
                        timezone = value;
                      });
                    },
                    onToggleFormat: (_) {},
                    onToggleAmPm: (_) {},
                  ),
                );
              },
            ),
            const SizedBox(height: AppSpacing.s16),
            AppTextField(
              controller: _endTimeController,
              label: 'End Time',
              hintText: '17:00',
              readOnly: true,
              suffixIcon: const Icon(Icons.access_time),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AppTimePicker(
                    hour: 17,
                    minute: 0,
                    is24Hour: true,
                    isAm: false,
                    timezone: timezone,
                    onCancel: () => Navigator.pop(context),
                    onConfirm: () => Navigator.pop(context),
                    onHourTap: () {},
                    onMinuteTap: () {},
                    onTimezoneChanged: (value) {
                      setState(() {
                        timezone = value;
                      });
                    },
                    onToggleFormat: (_) {},
                    onToggleAmPm: (_) {},
                  ),
                );
              },
            ),
            const SizedBox(height: AppSpacing.s16),
            AppDropdown<String>(
              label: 'Break Duration',
              hint: 'Select Duration',
              items: const [
                '15 Minutes',
                '30 Minutes',
                '45 Minutes',
                '60 Minutes',
              ],
              value: breakDuration,
              itemLabelBuilder: (e) => e,
              onSelected: (value) {
                setState(() {
                  breakDuration = value;
                });
              },
            ),
            const SizedBox(height: AppSpacing.s16),
            AppDropdown<String>(
              label: 'Timezone',
              hint: 'Select Timezone',
              items: const [
                'UTC+07:00 (Jakarta)',
                'UTC+08:00 (Singapore)',
                'UTC+09:00 (Tokyo)',
              ],
              value: timezone,
              itemLabelBuilder: (e) => e,
              onSelected: (value) {
                setState(() {
                  timezone = value;
                });
              },
            ),
          ],
        ),
      ),
      buttonLabel: 'Generate Schedule',
      onContinue: () {
        context.go(
          AppRoutes.scheduleGeneration,
        );
      },
    );
  }
}
