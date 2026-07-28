import 'package:flutter/material.dart';

import '../../../../app/shared/widgets/checkbox/app_checkbox.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () => onChanged(!value),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppCheckbox(
              value: value,
              onChanged: (checked) => onChanged(checked),
            ),
            const SizedBox(width: 8),
            Text(
              'Remember Me',
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
