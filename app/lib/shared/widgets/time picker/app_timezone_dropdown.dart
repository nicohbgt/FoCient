import 'package:flutter/material.dart';

DropdownButtonFormField<AppTimezone>(
  value: selectedTimezone,
  items: AppTimezones.all
      .map(
        (e) => DropdownMenuItem(
          value: e,
          child: Text(e.label),
        ),
      )
      .toList(),
  onChanged: onChanged,
)