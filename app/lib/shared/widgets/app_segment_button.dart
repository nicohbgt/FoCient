import 'package:flutter/material.dart';

class AppSegmentButton extends StatelessWidget {
  const AppSegmentButton({
    super.key,
    required this.is24Hour,
    required this.onChanged,
  });

  final bool is24Hour;

  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 90,
          child: FilledButton(
            onPressed: () => onChanged(true),
            child: const Text("24-hour"),
          ),
        ),
        SizedBox(
          width: 90,
          child: FilledButton.tonal(
            onPressed: () => onChanged(false),
            child: const Text("12-hour"),
          ),
        ),
      ],
    );
  }
}
